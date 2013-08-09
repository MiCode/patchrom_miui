.class public abstract Lcom/lbe/security/sdk/SDKConnection;
.super Ljava/lang/Object;
.source "SDKConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mSDKAppName:Ljava/lang/String;

.field mSDKService:Lcom/lbe/security/sdk/SDKService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "sdkAppName"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/lbe/security/sdk/SDKConnection;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/lbe/security/sdk/SDKConnection;->mSDKAppName:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public abstract OnSDKConnected(Lcom/lbe/security/sdk/SDKService;)V
.end method

.method public abstract OnSDKDisconnected()V
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lbe/security/sdk/SDKConnection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getSDKAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lbe/security/sdk/SDKConnection;->mSDKAppName:Ljava/lang/String;

    return-object v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 57
    :try_start_0
    new-instance v0, Lcom/lbe/security/sdk/SDKService;

    iget-object v1, p0, Lcom/lbe/security/sdk/SDKConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lbe/security/sdk/SDKConnection;->mSDKAppName:Ljava/lang/String;

    invoke-direct {v0, v1, p2, v2}, Lcom/lbe/security/sdk/SDKService;-><init>(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lbe/security/sdk/SDKConnection;->mSDKService:Lcom/lbe/security/sdk/SDKService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/lbe/security/sdk/SDKConnection;->mSDKService:Lcom/lbe/security/sdk/SDKService;

    invoke-virtual {p0, v0}, Lcom/lbe/security/sdk/SDKConnection;->OnSDKConnected(Lcom/lbe/security/sdk/SDKService;)V

    .line 62
    return-void

    .line 58
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lbe/security/sdk/SDKConnection;->mSDKService:Lcom/lbe/security/sdk/SDKService;

    .line 67
    invoke-virtual {p0}, Lcom/lbe/security/sdk/SDKConnection;->OnSDKDisconnected()V

    .line 68
    return-void
.end method
