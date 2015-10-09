.class final Landroid/app/LoadedApk$ServiceDispatcher;
.super Ljava/lang/Object;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ServiceDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;,
        Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;,
        Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;,
        Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    }
.end annotation


# instance fields
.field private final mActiveConnections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityThread:Landroid/os/Handler;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mDied:Z

.field private final mFlags:I

.field private mForgotten:Z

.field private final mIServiceConnection:Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;

.field private final mLocation:Landroid/app/ServiceConnectionLeaked;

.field private mUnbindLocation:Ljava/lang/RuntimeException;


# direct methods
.method constructor <init>(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 2
    .param p1, "conn"    # Landroid/content/ServiceConnection;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "activityThread"    # Landroid/os/Handler;
    .param p4, "flags"    # I

    .prologue
    .line 966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 962
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    .line 967
    new-instance v0, Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;

    invoke-direct {v0, p0}, Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;)V

    iput-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mIServiceConnection:Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;

    .line 968
    iput-object p1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    .line 969
    iput-object p2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mContext:Landroid/content/Context;

    .line 970
    iput-object p3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    .line 971
    new-instance v0, Landroid/app/ServiceConnectionLeaked;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ServiceConnectionLeaked;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mLocation:Landroid/app/ServiceConnectionLeaked;

    .line 972
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mLocation:Landroid/app/ServiceConnectionLeaked;

    invoke-virtual {v0}, Landroid/app/ServiceConnectionLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    .line 973
    iput p4, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mFlags:I

    .line 974
    return-void
.end method


# virtual methods
.method public connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1027
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    new-instance v1, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1032
    :goto_0
    return-void

    .line 1030
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/LoadedApk$ServiceDispatcher;->doConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public death(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x1

    .line 1037
    monitor-enter p0

    .line 1038
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mDied:Z

    .line 1039
    iget-object v1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;

    .line 1040
    .local v0, "old":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    if-eq v1, p2, :cond_1

    .line 1043
    :cond_0
    monitor-exit p0

    .line 1053
    :goto_0
    return-void

    .line 1045
    :cond_1
    iget-object v1, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    iget-object v2, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1046
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1048
    iget-object v1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 1049
    iget-object v1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    new-instance v2, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;

    invoke-direct {v2, p0, p1, p2, v4}, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1046
    .end local v0    # "old":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1051
    .restart local v0    # "old":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/app/LoadedApk$ServiceDispatcher;->doDeath(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public doConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1059
    monitor-enter p0

    .line 1060
    :try_start_0
    iget-boolean v3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mForgotten:Z

    if-eqz v3, :cond_1

    .line 1063
    monitor-exit p0

    .line 1105
    :cond_0
    :goto_0
    return-void

    .line 1065
    :cond_1
    iget-object v3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;

    .line 1066
    .local v2, "old":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    if-ne v3, p2, :cond_2

    .line 1068
    monitor-exit p0

    goto :goto_0

    .line 1095
    .end local v2    # "old":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1071
    .restart local v2    # "old":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    :cond_2
    if-eqz p2, :cond_5

    .line 1073
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mDied:Z

    .line 1074
    new-instance v1, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;-><init>(Landroid/app/LoadedApk$1;)V

    .line 1075
    .local v1, "info":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    iput-object p2, v1, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    .line 1076
    new-instance v3, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;

    invoke-direct {v3, p0, p1, p2}, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    iput-object v3, v1, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1078
    :try_start_2
    iget-object v3, v1, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {p2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1079
    iget-object v3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1092
    .end local v1    # "info":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    :goto_1
    if-eqz v2, :cond_3

    .line 1093
    :try_start_3
    iget-object v3, v2, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    iget-object v4, v2, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1095
    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1098
    if-eqz v2, :cond_4

    .line 1099
    iget-object v3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-interface {v3, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 1102
    :cond_4
    if-eqz p2, :cond_0

    .line 1103
    iget-object v3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-interface {v3, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    .line 1080
    .restart local v1    # "info":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    :catch_0
    move-exception v0

    .line 1083
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    iget-object v3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    monitor-exit p0

    goto :goto_0

    .line 1089
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "info":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    :cond_5
    iget-object v3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public doDeath(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1108
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 1109
    return-void
.end method

.method doForget()V
    .locals 5

    .prologue
    .line 992
    monitor-enter p0

    .line 993
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 994
    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;

    .line 995
    .local v0, "ci":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    iget-object v2, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    iget-object v3, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 993
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 997
    .end local v0    # "ci":Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    :cond_0
    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 998
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mForgotten:Z

    .line 999
    monitor-exit p0

    .line 1000
    return-void

    .line 999
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getFlags()I
    .locals 1

    .prologue
    .line 1015
    iget v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mFlags:I

    return v0
.end method

.method getIServiceConnection()Landroid/app/IServiceConnection;
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mIServiceConnection:Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;

    return-object v0
.end method

.method getLocation()Landroid/app/ServiceConnectionLeaked;
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mLocation:Landroid/app/ServiceConnectionLeaked;

    return-object v0
.end method

.method getServiceConnection()Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method getUnbindLocation()Ljava/lang/RuntimeException;
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mUnbindLocation:Ljava/lang/RuntimeException;

    return-object v0
.end method

.method setUnbindLocation(Ljava/lang/RuntimeException;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/RuntimeException;

    .prologue
    .line 1019
    iput-object p1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mUnbindLocation:Ljava/lang/RuntimeException;

    .line 1020
    return-void
.end method

.method validate(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityThread"    # Landroid/os/Handler;

    .prologue
    .line 977
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_0

    .line 978
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " registered with differing Context (was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 983
    :cond_0
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    if-eq v0, p2, :cond_1

    .line 984
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " registered with differing handler (was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 989
    :cond_1
    return-void
.end method
