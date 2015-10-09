.class public Landroid/os/UserManager;
.super Ljava/lang/Object;
.source "UserManager.java"


# static fields
.field public static final DISALLOW_CONFIG_BLUETOOTH:Ljava/lang/String; = "no_config_bluetooth"

.field public static final DISALLOW_CONFIG_CREDENTIALS:Ljava/lang/String; = "no_config_credentials"

.field public static final DISALLOW_CONFIG_WIFI:Ljava/lang/String; = "no_config_wifi"

.field public static final DISALLOW_INSTALL_APPS:Ljava/lang/String; = "no_install_apps"

.field public static final DISALLOW_INSTALL_UNKNOWN_SOURCES:Ljava/lang/String; = "no_install_unknown_sources"

.field public static final DISALLOW_MODIFY_ACCOUNTS:Ljava/lang/String; = "no_modify_accounts"

.field public static final DISALLOW_REMOVE_USER:Ljava/lang/String; = "no_remove_user"

.field public static final DISALLOW_SHARE_LOCATION:Ljava/lang/String; = "no_share_location"

.field public static final DISALLOW_UNINSTALL_APPS:Ljava/lang/String; = "no_uninstall_apps"

.field public static final DISALLOW_USB_FILE_TRANSFER:Ljava/lang/String; = "no_usb_file_transfer"

.field public static final PIN_VERIFICATION_FAILED_INCORRECT:I = -0x3

.field public static final PIN_VERIFICATION_FAILED_NOT_SET:I = -0x2

.field public static final PIN_VERIFICATION_SUCCESS:I = -0x1

.field private static TAG:Ljava/lang/String;

.field private static sInstance:Landroid/os/UserManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/os/IUserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "UserManager"

    sput-object v0, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    .line 150
    const/4 v0, 0x0

    sput-object v0, Landroid/os/UserManager;->sInstance:Landroid/os/UserManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/IUserManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/IUserManager;

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p2, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    .line 163
    iput-object p1, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    .line 164
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Landroid/os/UserManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    const-class v1, Landroid/os/UserManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/os/UserManager;->sInstance:Landroid/os/UserManager;

    if-nez v0, :cond_0

    .line 155
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    sput-object v0, Landroid/os/UserManager;->sInstance:Landroid/os/UserManager;

    .line 157
    :cond_0
    sget-object v0, Landroid/os/UserManager;->sInstance:Landroid/os/UserManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getMaxSupportedUsers()I
    .locals 3

    .prologue
    .line 562
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v1, "JVP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 563
    :goto_0
    return v0

    :cond_0
    const-string v0, "fw.max_users"

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/internal/R$integer;->config_multiuserMaximumUsers:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static supportsMultipleUsers()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 172
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkRestrictionsChallenge(Ljava/lang/String;)I
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 668
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->checkRestrictionsChallenge(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 672
    :goto_0
    return v1

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not check restrictions pin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const/4 v1, -0x3

    goto :goto_0
.end method

.method public createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 404
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 407
    :goto_0
    return-object v1

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not create a user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 611
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 615
    :goto_0
    return-object v1

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get application restrictions for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationRestrictions(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 623
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/os/IUserManager;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 627
    :goto_0
    return-object v1

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get application restrictions for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSerialNumberForUser(Landroid/os/UserHandle;)J
    .locals 2
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 374
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getUserCount()I
    .locals 2

    .prologue
    .line 415
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 416
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getUserForSerialNumber(J)Landroid/os/UserHandle;
    .locals 2
    .param p1, "serialNumber"    # J

    .prologue
    .line 387
    long-to-int v1, p1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserHandle(I)I

    move-result v0

    .line 388
    .local v0, "ident":I
    if-ltz v0, :cond_0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUserHandle()I
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public getUserHandle(I)I
    .locals 4
    .param p1, "userSerialNumber"    # I

    .prologue
    .line 594
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getUserHandle(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 598
    :goto_0
    return v1

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get userHandle for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getUserIcon(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 503
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getUserIcon(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 506
    :goto_0
    return-object v1

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get the user icon "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 506
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 265
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 268
    :goto_0
    return-object v1

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get user info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 192
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IUserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-object v1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get user name"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    const-string v1, ""

    goto :goto_0
.end method

.method public getUserRestrictions()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 277
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 287
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 290
    :goto_0
    return-object v1

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get user restrictions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public getUserSerialNumber(I)I
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    .line 576
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getUserSerialNumber(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 580
    :goto_0
    return v1

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get serial number for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getUsers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 430
    :goto_0
    return-object v1

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get user list"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUsers(Z)Ljava/util/List;
    .locals 3
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 443
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 446
    :goto_0
    return-object v1

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get user list"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasRestrictionsChallenge()Z
    .locals 3

    .prologue
    .line 686
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1}, Landroid/os/IUserManager;->hasRestrictionsChallenge()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 690
    :goto_0
    return v1

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not change restrictions pin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasUserRestriction(Ljava/lang/String;)Z
    .locals 1
    .param p1, "restrictionKey"    # Ljava/lang/String;

    .prologue
    .line 350
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 361
    invoke-virtual {p0, p2}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isGuestEnabled()Z
    .locals 3

    .prologue
    .line 533
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1}, Landroid/os/IUserManager;->isGuestEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 536
    :goto_0
    return v1

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not retrieve guest enabled state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLinkedUser()Z
    .locals 3

    .prologue
    .line 216
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1}, Landroid/os/IUserManager;->isRestricted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 219
    :goto_0
    return v1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not check if user is limited "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUserAGoat()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public isUserRunning(Landroid/os/UserHandle;)Z
    .locals 5
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v1, 0x0

    .line 233
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->isUserRunning(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 236
    :goto_0
    return v1

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isUserRunningOrStopping(Landroid/os/UserHandle;)Z
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 249
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->isUserRunning(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 252
    :goto_0
    return v1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeRestrictions()V
    .locals 3

    .prologue
    .line 696
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1}, Landroid/os/IUserManager;->removeRestrictions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    :goto_0
    return-void

    .line 697
    :catch_0
    move-exception v0

    .line 698
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not change restrictions pin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeUser(I)Z
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 458
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 461
    :goto_0
    return v1

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not remove user "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 461
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 636
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/os/IUserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :goto_0
    return-void

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set application restrictions for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setGuestEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 519
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->setGuestEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :goto_0
    return-void

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not change guest account availability to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRestrictionsChallenge(Ljava/lang/String;)Z
    .locals 3
    .param p1, "newPin"    # Ljava/lang/String;

    .prologue
    .line 650
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->setRestrictionsChallenge(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 654
    :goto_0
    return v1

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not change restrictions pin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "userHandle"    # I
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 489
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :goto_0
    return-void

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set the user icon "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setUserName(ILjava/lang/String;)V
    .locals 3
    .param p1, "userHandle"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 475
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->setUserName(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :goto_0
    return-void

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set the user name "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setUserRestriction(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 324
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v0

    .line 325
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 326
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->setUserRestrictions(Landroid/os/Bundle;)V

    .line 327
    return-void
.end method

.method public setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 338
    invoke-virtual {p0, p3}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0

    .line 339
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 340
    invoke-virtual {p0, v0, p3}, Landroid/os/UserManager;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 341
    return-void
.end method

.method public setUserRestrictions(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "restrictions"    # Landroid/os/Bundle;

    .prologue
    .line 300
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/UserManager;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 301
    return-void
.end method

.method public setUserRestrictions(Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 311
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/os/IUserManager;->setUserRestrictions(Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set user restrictions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public wipeUser(I)V
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    .line 548
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->wipeUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :goto_0
    return-void

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/UserManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not wipe user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
