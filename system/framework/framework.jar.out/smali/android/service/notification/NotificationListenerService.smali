.class public abstract Landroid/service/notification/NotificationListenerService;
.super Landroid/app/Service;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/NotificationListenerService$1;,
        Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.notification.NotificationListenerService"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mNoMan:Landroid/app/INotificationManager;

.field private mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    .line 164
    return-void
.end method

.method static synthetic access$100(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/service/notification/NotificationListenerService;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final getNotificationInterface()Landroid/app/INotificationManager;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mNoMan:Landroid/app/INotificationManager;

    if-nez v0, :cond_0

    .line 88
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mNoMan:Landroid/app/INotificationManager;

    .line 91
    :cond_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mNoMan:Landroid/app/INotificationManager;

    return-object v0
.end method


# virtual methods
.method public final cancelAllNotifications()V
    .locals 3

    .prologue
    .line 135
    :try_start_0
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->cancelAllNotificationsFromListener(Landroid/service/notification/INotificationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final cancelNotification(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 116
    :try_start_0
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    invoke-interface {v1, v2, p1, p2, p3}, Landroid/app/INotificationManager;->cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getActiveNotifications()[Landroid/service/notification/StatusBarNotification;
    .locals 3

    .prologue
    .line 149
    :try_start_0
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;)[Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 153
    :goto_0
    return-object v1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 158
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;-><init>(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationListenerService$1;)V

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    .line 161
    :cond_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    return-object v0
.end method

.method public abstract onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
.end method
