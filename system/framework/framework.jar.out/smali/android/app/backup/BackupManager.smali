.class public Landroid/app/backup/BackupManager;
.super Ljava/lang/Object;
.source "BackupManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BackupManager"

.field private static sService:Landroid/app/backup/IBackupManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    .line 81
    return-void
.end method

.method private static checkServiceBinder()V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_0

    .line 66
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    sput-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    .line 69
    :cond_0
    return-void
.end method

.method public static dataChanged(Ljava/lang/String;)V
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 113
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    .line 115
    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p0}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "dataChanged(pkg) couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public beginRestoreSession()Landroid/app/backup/RestoreSession;
    .locals 7

    .prologue
    .line 169
    const/4 v2, 0x0

    .line 170
    .local v2, "session":Landroid/app/backup/RestoreSession;
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 171
    sget-object v4, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v4, :cond_0

    .line 174
    :try_start_0
    sget-object v4, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v0

    .line 175
    .local v0, "binder":Landroid/app/backup/IRestoreSession;
    if-eqz v0, :cond_0

    .line 176
    new-instance v3, Landroid/app/backup/RestoreSession;

    iget-object v4, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Landroid/app/backup/RestoreSession;-><init>(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "session":Landroid/app/backup/RestoreSession;
    .local v3, "session":Landroid/app/backup/RestoreSession;
    move-object v2, v3

    .line 182
    .end local v0    # "binder":Landroid/app/backup/IRestoreSession;
    .end local v3    # "session":Landroid/app/backup/RestoreSession;
    .restart local v2    # "session":Landroid/app/backup/RestoreSession;
    :cond_0
    :goto_0
    return-object v2

    .line 178
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "BackupManager"

    const-string v5, "beginRestoreSession() couldn\'t connect"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dataChanged()V
    .locals 3

    .prologue
    .line 90
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 91
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    .line 93
    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v2, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "dataChanged() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestRestore(Landroid/app/backup/RestoreObserver;)I
    .locals 8
    .param p1, "observer"    # Landroid/app/backup/RestoreObserver;

    .prologue
    .line 141
    const/4 v2, -0x1

    .line 142
    .local v2, "result":I
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 143
    sget-object v5, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v5, :cond_1

    .line 144
    const/4 v3, 0x0

    .line 146
    .local v3, "session":Landroid/app/backup/RestoreSession;
    :try_start_0
    sget-object v5, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v6, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v0

    .line 148
    .local v0, "binder":Landroid/app/backup/IRestoreSession;
    if-eqz v0, :cond_0

    .line 149
    new-instance v4, Landroid/app/backup/RestoreSession;

    iget-object v5, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Landroid/app/backup/RestoreSession;-><init>(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .end local v3    # "session":Landroid/app/backup/RestoreSession;
    .local v4, "session":Landroid/app/backup/RestoreSession;
    :try_start_1
    iget-object v5, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Landroid/app/backup/RestoreSession;->restorePackage(Ljava/lang/String;Landroid/app/backup/RestoreObserver;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    move-object v3, v4

    .line 155
    .end local v4    # "session":Landroid/app/backup/RestoreSession;
    .restart local v3    # "session":Landroid/app/backup/RestoreSession;
    :cond_0
    if-eqz v3, :cond_1

    .line 156
    invoke-virtual {v3}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    .line 160
    .end local v0    # "binder":Landroid/app/backup/IRestoreSession;
    .end local v3    # "session":Landroid/app/backup/RestoreSession;
    :cond_1
    :goto_0
    return v2

    .line 152
    .restart local v3    # "session":Landroid/app/backup/RestoreSession;
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Landroid/os/RemoteException;
    :goto_1
    :try_start_2
    const-string v5, "BackupManager"

    const-string/jumbo v6, "restoreSelf() unable to contact service"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    if-eqz v3, :cond_1

    .line 156
    invoke-virtual {v3}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    goto :goto_0

    .line 155
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_2

    .line 156
    invoke-virtual {v3}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    :cond_2
    throw v5

    .line 155
    .end local v3    # "session":Landroid/app/backup/RestoreSession;
    .restart local v0    # "binder":Landroid/app/backup/IRestoreSession;
    .restart local v4    # "session":Landroid/app/backup/RestoreSession;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "session":Landroid/app/backup/RestoreSession;
    .restart local v3    # "session":Landroid/app/backup/RestoreSession;
    goto :goto_2

    .line 152
    .end local v3    # "session":Landroid/app/backup/RestoreSession;
    .restart local v4    # "session":Landroid/app/backup/RestoreSession;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "session":Landroid/app/backup/RestoreSession;
    .restart local v3    # "session":Landroid/app/backup/RestoreSession;
    goto :goto_1
.end method
