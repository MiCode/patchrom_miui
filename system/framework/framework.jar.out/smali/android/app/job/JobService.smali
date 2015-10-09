.class public abstract Landroid/app/job/JobService;
.super Landroid/app/Service;
.source "JobService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobService$JobHandler;
    }
.end annotation


# static fields
.field public static final PERMISSION_BIND:Ljava/lang/String; = "android.permission.BIND_JOB_SERVICE"

.field private static final TAG:Ljava/lang/String; = "JobService"


# instance fields
.field private final MSG_EXECUTE_JOB:I

.field private final MSG_JOB_FINISHED:I

.field private final MSG_STOP_JOB:I

.field mBinder:Landroid/app/job/IJobService;

.field mHandler:Landroid/app/job/JobService$JobHandler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mHandlerLock"
    .end annotation
.end field

.field private final mHandlerLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/job/JobService;->MSG_EXECUTE_JOB:I

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/job/JobService;->MSG_STOP_JOB:I

    .line 74
    const/4 v0, 0x2

    iput v0, p0, Landroid/app/job/JobService;->MSG_JOB_FINISHED:I

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/job/JobService;->mHandlerLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Landroid/app/job/JobService$1;

    invoke-direct {v0, p0}, Landroid/app/job/JobService$1;-><init>(Landroid/app/job/JobService;)V

    iput-object v0, p0, Landroid/app/job/JobService;->mBinder:Landroid/app/job/IJobService;

    .line 116
    return-void
.end method


# virtual methods
.method ensureHandler()V
    .locals 3

    .prologue
    .line 104
    iget-object v1, p0, Landroid/app/job/JobService;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v0, p0, Landroid/app/job/JobService;->mHandler:Landroid/app/job/JobService$JobHandler;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Landroid/app/job/JobService$JobHandler;

    invoke-virtual {p0}, Landroid/app/job/JobService;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroid/app/job/JobService$JobHandler;-><init>(Landroid/app/job/JobService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/job/JobService;->mHandler:Landroid/app/job/JobService$JobHandler;

    .line 108
    :cond_0
    monitor-exit v1

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final jobFinished(Landroid/app/job/JobParameters;Z)V
    .locals 3
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "needsReschedule"    # Z

    .prologue
    .line 253
    invoke-virtual {p0}, Landroid/app/job/JobService;->ensureHandler()V

    .line 254
    iget-object v1, p0, Landroid/app/job/JobService;->mHandler:Landroid/app/job/JobService$JobHandler;

    const/4 v2, 0x2

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 255
    .local v0, "m":Landroid/os/Message;
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 256
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 257
    return-void

    .line 255
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 198
    iget-object v0, p0, Landroid/app/job/JobService;->mBinder:Landroid/app/job/IJobService;

    invoke-interface {v0}, Landroid/app/job/IJobService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract onStartJob(Landroid/app/job/JobParameters;)Z
.end method

.method public abstract onStopJob(Landroid/app/job/JobParameters;)Z
.end method
