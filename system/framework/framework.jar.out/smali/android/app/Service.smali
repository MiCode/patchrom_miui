.class public abstract Landroid/app/Service;
.super Landroid/content/ContextWrapper;
.source "Service.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field public static final START_CONTINUATION_MASK:I = 0xf

.field public static final START_FLAG_REDELIVERY:I = 0x1

.field public static final START_FLAG_RETRY:I = 0x2

.field public static final START_NOT_STICKY:I = 0x2

.field public static final START_REDELIVER_INTENT:I = 0x3

.field public static final START_STICKY:I = 0x1

.field public static final START_STICKY_COMPATIBILITY:I = 0x0

.field public static final START_TASK_REMOVED_COMPLETE:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "Service"


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private mApplication:Landroid/app/Application;

.field private mClassName:Ljava/lang/String;

.field private mStartCompatibility:Z

.field private mThread:Landroid/app/ActivityThread;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 295
    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 709
    iput-object v0, p0, Landroid/app/Service;->mThread:Landroid/app/ActivityThread;

    .line 710
    iput-object v0, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    .line 711
    iput-object v0, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    .line 712
    iput-object v0, p0, Landroid/app/Service;->mApplication:Landroid/app/Application;

    .line 713
    iput-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    .line 714
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Service;->mStartCompatibility:Z

    .line 296
    return-void
.end method


# virtual methods
.method public final attach(Landroid/content/Context;Landroid/app/ActivityThread;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thread"    # Landroid/app/ActivityThread;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "application"    # Landroid/app/Application;
    .param p6, "activityManager"    # Ljava/lang/Object;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    .line 695
    iput-object p2, p0, Landroid/app/Service;->mThread:Landroid/app/ActivityThread;

    .line 696
    iput-object p3, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    .line 697
    iput-object p4, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    .line 698
    iput-object p5, p0, Landroid/app/Service;->mApplication:Landroid/app/Application;

    .line 699
    check-cast p6, Landroid/app/IActivityManager;

    .end local p6    # "activityManager":Ljava/lang/Object;
    iput-object p6, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    .line 700
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/app/Service;->mStartCompatibility:Z

    .line 702
    return-void

    .line 700
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 682
    const-string/jumbo v0, "nothing to dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 683
    return-void
.end method

.method public final getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Landroid/app/Service;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method final getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 464
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 461
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 467
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 524
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 314
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 450
    invoke-virtual {p0, p1, p3}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 451
    iget-boolean v0, p0, Landroid/app/Service;->mStartCompatibility:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .prologue
    .line 537
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 470
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 509
    const/4 v0, 0x0

    return v0
.end method

.method public final setForeground(Z)V
    .locals 3
    .param p1, "isForeground"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 614
    const-string v0, "Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setForeground: ignoring old API call on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    return-void
.end method

.method public final startForeground(ILandroid/app/Notification;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    .line 643
    :try_start_0
    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    const/4 v5, 0x1

    move v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :goto_0
    return-void

    .line 646
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final stopForeground(Z)V
    .locals 6
    .param p1, "removeNotification"    # Z

    .prologue
    .line 660
    :try_start_0
    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :goto_0
    return-void

    .line 663
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final stopSelf()V
    .locals 1

    .prologue
    .line 546
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopSelf(I)V

    .line 547
    return-void
.end method

.method public final stopSelf(I)V
    .locals 3
    .param p1, "startId"    # I

    .prologue
    .line 555
    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    if-nez v0, :cond_0

    .line 563
    :goto_0
    return-void

    .line 559
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, v2, p1}, Landroid/app/IActivityManager;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 561
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final stopSelfResult(I)Z
    .locals 4
    .param p1, "startId"    # I

    .prologue
    const/4 v0, 0x0

    .line 587
    iget-object v1, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    .line 595
    :goto_0
    return v0

    .line 591
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, v3, p1}, Landroid/app/IActivityManager;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 593
    :catch_0
    move-exception v1

    goto :goto_0
.end method
