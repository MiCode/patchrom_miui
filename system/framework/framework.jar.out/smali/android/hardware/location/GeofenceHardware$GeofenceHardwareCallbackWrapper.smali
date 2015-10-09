.class Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;
.super Landroid/hardware/location/IGeofenceHardwareCallback$Stub;
.source "GeofenceHardware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GeofenceHardwareCallbackWrapper"
.end annotation


# instance fields
.field private mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/hardware/location/GeofenceHardwareCallback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/hardware/location/GeofenceHardware;


# direct methods
.method constructor <init>(Landroid/hardware/location/GeofenceHardware;Landroid/hardware/location/GeofenceHardwareCallback;)V
    .locals 1
    .param p2, "c"    # Landroid/hardware/location/GeofenceHardwareCallback;

    .prologue
    .line 469
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;->this$0:Landroid/hardware/location/GeofenceHardware;

    invoke-direct {p0}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;-><init>()V

    .line 470
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    .line 471
    return-void
.end method


# virtual methods
.method public onGeofenceAdd(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 483
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/GeofenceHardwareCallback;

    .line 484
    .local v0, "c":Landroid/hardware/location/GeofenceHardwareCallback;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareCallback;->onGeofenceAdd(II)V

    .line 485
    :cond_0
    return-void
.end method

.method public onGeofencePause(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 496
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/GeofenceHardwareCallback;

    .line 497
    .local v0, "c":Landroid/hardware/location/GeofenceHardwareCallback;
    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareCallback;->onGeofencePause(II)V

    .line 500
    :cond_0
    return-void
.end method

.method public onGeofenceRemove(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 488
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/GeofenceHardwareCallback;

    .line 489
    .local v0, "c":Landroid/hardware/location/GeofenceHardwareCallback;
    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareCallback;->onGeofenceRemove(II)V

    .line 491
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;->this$0:Landroid/hardware/location/GeofenceHardware;

    # invokes: Landroid/hardware/location/GeofenceHardware;->removeCallback(Landroid/hardware/location/GeofenceHardwareCallback;)V
    invoke-static {v1, v0}, Landroid/hardware/location/GeofenceHardware;->access$000(Landroid/hardware/location/GeofenceHardware;Landroid/hardware/location/GeofenceHardwareCallback;)V

    .line 493
    :cond_0
    return-void
.end method

.method public onGeofenceResume(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 503
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/GeofenceHardwareCallback;

    .line 504
    .local v0, "c":Landroid/hardware/location/GeofenceHardwareCallback;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareCallback;->onGeofenceResume(II)V

    .line 505
    :cond_0
    return-void
.end method

.method public onGeofenceTransition(IILandroid/location/Location;JI)V
    .locals 7
    .param p1, "geofenceId"    # I
    .param p2, "transition"    # I
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "timestamp"    # J
    .param p6, "monitoringType"    # I

    .prologue
    .line 475
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/GeofenceHardwareCallback;

    .line 476
    .local v0, "c":Landroid/hardware/location/GeofenceHardwareCallback;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    .line 477
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/location/GeofenceHardwareCallback;->onGeofenceTransition(IILandroid/location/Location;JI)V

    .line 480
    :cond_0
    return-void
.end method
