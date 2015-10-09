.class final Landroid/os/SystemService$1;
.super Ljava/lang/Object;
.source "SystemService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    # getter for: Landroid/os/SystemService;->sPropertyLock:Ljava/lang/Object;
    invoke-static {}, Landroid/os/SystemService;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 56
    :try_start_0
    # getter for: Landroid/os/SystemService;->sPropertyLock:Ljava/lang/Object;
    invoke-static {}, Landroid/os/SystemService;->access$100()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 57
    monitor-exit v1

    .line 58
    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
