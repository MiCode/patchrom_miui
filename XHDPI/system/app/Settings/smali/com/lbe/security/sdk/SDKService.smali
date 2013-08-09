.class public Lcom/lbe/security/sdk/SDKService;
.super Ljava/lang/Object;
.source "SDKService.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHIPS:Lcom/lbe/security/service/privacy/HIPSService;

.field private mHIPSService:Lcom/lbe/security/service/privacy/IHIPSService;

.field private mHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

.field private mSDKHelperService:Lcom/lbe/security/service/sdkhelper/ISDKHelperService;

.field private mService:Lcom/lbe/security/service/ISecurityService;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "binder"
    .parameter "sdkAppName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lbe/security/sdk/SDKException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/lbe/security/sdk/SDKService;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {p2}, Lcom/lbe/security/service/ISecurityService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lbe/security/service/ISecurityService;

    move-result-object v3

    iput-object v3, p0, Lcom/lbe/security/sdk/SDKService;->mService:Lcom/lbe/security/service/ISecurityService;

    .line 38
    iget-object v3, p0, Lcom/lbe/security/sdk/SDKService;->mService:Lcom/lbe/security/service/ISecurityService;

    if-nez v3, :cond_0

    .line 39
    new-instance v3, Lcom/lbe/security/sdk/SDKException;

    const-string v4, "SDK Service not recognized"

    invoke-direct {v3, v4}, Lcom/lbe/security/sdk/SDKException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 42
    :cond_0
    const/4 v2, 0x0

    .line 44
    .local v2, hipsBinder:Landroid/os/IBinder;
    :try_start_0
    iget-object v3, p0, Lcom/lbe/security/sdk/SDKService;->mService:Lcom/lbe/security/service/ISecurityService;

    const-string v4, "hips"

    invoke-interface {v3, v4}, Lcom/lbe/security/service/ISecurityService;->getService(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 48
    :goto_0
    invoke-static {v2}, Lcom/lbe/security/service/privacy/IHIPSService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lbe/security/service/privacy/IHIPSService;

    move-result-object v3

    iput-object v3, p0, Lcom/lbe/security/sdk/SDKService;->mHIPSService:Lcom/lbe/security/service/privacy/IHIPSService;

    .line 49
    iget-object v3, p0, Lcom/lbe/security/sdk/SDKService;->mHIPSService:Lcom/lbe/security/service/privacy/IHIPSService;

    if-nez v3, :cond_1

    .line 50
    new-instance v3, Lcom/lbe/security/sdk/SDKException;

    const-string v4, "HIPS Service not found"

    invoke-direct {v3, v4}, Lcom/lbe/security/sdk/SDKException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    :cond_1
    new-instance v3, Lcom/lbe/security/service/privacy/HIPSService;

    iget-object v4, p0, Lcom/lbe/security/sdk/SDKService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/lbe/security/sdk/SDKService;->mHIPSService:Lcom/lbe/security/service/privacy/IHIPSService;

    invoke-direct {v3, v4, v5}, Lcom/lbe/security/service/privacy/HIPSService;-><init>(Landroid/content/Context;Lcom/lbe/security/service/privacy/IHIPSService;)V

    iput-object v3, p0, Lcom/lbe/security/sdk/SDKService;->mHIPS:Lcom/lbe/security/service/privacy/HIPSService;

    .line 55
    const/4 v1, 0x0

    .line 57
    .local v1, helperBinder:Landroid/os/IBinder;
    :try_start_1
    iget-object v3, p0, Lcom/lbe/security/sdk/SDKService;->mService:Lcom/lbe/security/service/ISecurityService;

    const-string v4, "SDKHelper"

    invoke-interface {v3, v4}, Lcom/lbe/security/service/ISecurityService;->getService(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 61
    :goto_1
    invoke-static {v1}, Lcom/lbe/security/service/sdkhelper/ISDKHelperService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lbe/security/service/sdkhelper/ISDKHelperService;

    move-result-object v3

    iput-object v3, p0, Lcom/lbe/security/sdk/SDKService;->mSDKHelperService:Lcom/lbe/security/service/sdkhelper/ISDKHelperService;

    .line 62
    iget-object v3, p0, Lcom/lbe/security/sdk/SDKService;->mSDKHelperService:Lcom/lbe/security/service/sdkhelper/ISDKHelperService;

    if-nez v3, :cond_2

    .line 63
    new-instance v3, Lcom/lbe/security/sdk/SDKException;

    const-string v4, "SDK Helper Service not found"

    invoke-direct {v3, v4}, Lcom/lbe/security/sdk/SDKException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 67
    :cond_2
    :try_start_2
    new-instance v3, Lcom/lbe/security/service/sdkhelper/SDKHelper;

    iget-object v4, p0, Lcom/lbe/security/sdk/SDKService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/lbe/security/sdk/SDKService;->mSDKHelperService:Lcom/lbe/security/service/sdkhelper/ISDKHelperService;

    invoke-direct {v3, v4, v5, p3}, Lcom/lbe/security/service/sdkhelper/SDKHelper;-><init>(Landroid/content/Context;Lcom/lbe/security/service/sdkhelper/ISDKHelperService;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/lbe/security/sdk/SDKService;->mHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 71
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Lcom/lbe/security/sdk/SDKException;

    const-string v4, "Unable to initialize SDK Helper"

    invoke-direct {v3, v4, v0}, Lcom/lbe/security/sdk/SDKException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 58
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_1

    .line 45
    .end local v1           #helperBinder:Landroid/os/IBinder;
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method public static bindSDKService(Lcom/lbe/security/sdk/SDKConnection;)Z
    .locals 3
    .parameter "connection"

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/lbe/security/sdk/SDKConnection;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lbe/security/sdk/SDKConnection;->getSDKAppName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lbe/security/sdk/SDKService;->createServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method private static createServiceIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 117
    .local v0, it:Landroid/content/Intent;
    const-string v1, "com.lbe.security.service.SecurityService"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    return-object v0
.end method

.method public static unbindSDKService(Lcom/lbe/security/sdk/SDKConnection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/sdk/SDKConnection;->mSDKService:Lcom/lbe/security/sdk/SDKService;

    invoke-virtual {v0}, Lcom/lbe/security/sdk/SDKService;->getSDKHelper()Lcom/lbe/security/service/sdkhelper/SDKHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    invoke-virtual {p0}, Lcom/lbe/security/sdk/SDKConnection;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 108
    return-void

    .line 105
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getHIPSService()Lcom/lbe/security/service/privacy/HIPSService;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lbe/security/sdk/SDKService;->mHIPS:Lcom/lbe/security/service/privacy/HIPSService;

    return-object v0
.end method

.method public getSDKHelper()Lcom/lbe/security/service/sdkhelper/SDKHelper;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lbe/security/sdk/SDKService;->mHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    return-object v0
.end method
