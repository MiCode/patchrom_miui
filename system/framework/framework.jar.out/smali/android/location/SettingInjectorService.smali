.class public abstract Landroid/location/SettingInjectorService;
.super Landroid/app/Service;
.source "SettingInjectorService.java"


# static fields
.field public static final ACTION_INJECTED_SETTING_CHANGED:Ljava/lang/String; = "android.location.InjectedSettingChanged"

.field public static final ACTION_SERVICE_INTENT:Ljava/lang/String; = "android.location.SettingInjectorService"

.field public static final ATTRIBUTES_NAME:Ljava/lang/String; = "injected-location-setting"

.field public static final ENABLED_KEY:Ljava/lang/String; = "enabled"

.field public static final MESSENGER_KEY:Ljava/lang/String; = "messenger"

.field public static final META_DATA_NAME:Ljava/lang/String; = "android.location.SettingInjectorService"

.field public static final SUMMARY_KEY:Ljava/lang/String; = "summary"

.field private static final TAG:Ljava/lang/String; = "SettingInjectorService"


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 141
    iput-object p1, p0, Landroid/location/SettingInjectorService;->mName:Ljava/lang/String;

    .line 142
    return-void
.end method

.method private onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 165
    :try_start_0
    invoke-virtual {p0}, Landroid/location/SettingInjectorService;->onGetSummary()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 175
    .local v2, "summary":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Landroid/location/SettingInjectorService;->onGetEnabled()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 183
    .local v1, "enabled":Z
    invoke-direct {p0, p1, v2, v1}, Landroid/location/SettingInjectorService;->sendStatus(Landroid/content/Intent;Ljava/lang/String;Z)V

    .line 184
    return-void

    .line 166
    .end local v1    # "enabled":Z
    .end local v2    # "summary":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v4}, Landroid/location/SettingInjectorService;->sendStatus(Landroid/content/Intent;Ljava/lang/String;Z)V

    .line 170
    throw v0

    .line 176
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "summary":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 179
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v2, v4}, Landroid/location/SettingInjectorService;->sendStatus(Landroid/content/Intent;Ljava/lang/String;Z)V

    .line 180
    throw v0
.end method

.method private sendStatus(Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "summary"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    .prologue
    .line 191
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 192
    .local v2, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 193
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "summary"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v4, "enabled"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 195
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 197
    const-string v4, "SettingInjectorService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 198
    const-string v4, "SettingInjectorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/location/SettingInjectorService;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": received "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", summary="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sending message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    const-string/jumbo v4, "messenger"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    .line 204
    .local v3, "messenger":Landroid/os/Messenger;
    :try_start_0
    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "SettingInjectorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/location/SettingInjectorService;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": sending dynamic status failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract onGetEnabled()Z
.end method

.method protected abstract onGetSummary()Ljava/lang/String;
.end method

.method public final onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 151
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 152
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 156
    invoke-direct {p0, p1}, Landroid/location/SettingInjectorService;->onHandleIntent(Landroid/content/Intent;)V

    .line 157
    invoke-virtual {p0, p3}, Landroid/location/SettingInjectorService;->stopSelf(I)V

    .line 158
    const/4 v0, 0x2

    return v0
.end method
