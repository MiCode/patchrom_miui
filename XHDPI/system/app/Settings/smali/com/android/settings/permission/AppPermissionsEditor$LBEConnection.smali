.class Lcom/android/settings/permission/AppPermissionsEditor$LBEConnection;
.super Lcom/lbe/security/sdk/SDKConnection;
.source "AppPermissionsEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/permission/AppPermissionsEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LBEConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/permission/AppPermissionsEditor;


# direct methods
.method public constructor <init>(Lcom/android/settings/permission/AppPermissionsEditor;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "sdkAppName"

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/settings/permission/AppPermissionsEditor$LBEConnection;->this$0:Lcom/android/settings/permission/AppPermissionsEditor;

    .line 379
    invoke-direct {p0, p2, p3}, Lcom/lbe/security/sdk/SDKConnection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 380
    return-void
.end method


# virtual methods
.method public OnSDKConnected(Lcom/lbe/security/sdk/SDKService;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor$LBEConnection;->this$0:Lcom/android/settings/permission/AppPermissionsEditor;

    invoke-virtual {p1}, Lcom/lbe/security/sdk/SDKService;->getSDKHelper()Lcom/lbe/security/service/sdkhelper/SDKHelper;

    move-result-object v1

    #setter for: Lcom/android/settings/permission/AppPermissionsEditor;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;
    invoke-static {v0, v1}, Lcom/android/settings/permission/AppPermissionsEditor;->access$602(Lcom/android/settings/permission/AppPermissionsEditor;Lcom/lbe/security/service/sdkhelper/SDKHelper;)Lcom/lbe/security/service/sdkhelper/SDKHelper;

    .line 385
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor$LBEConnection;->this$0:Lcom/android/settings/permission/AppPermissionsEditor;

    invoke-virtual {p1}, Lcom/lbe/security/sdk/SDKService;->getHIPSService()Lcom/lbe/security/service/privacy/HIPSService;

    move-result-object v1

    #setter for: Lcom/android/settings/permission/AppPermissionsEditor;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;
    invoke-static {v0, v1}, Lcom/android/settings/permission/AppPermissionsEditor;->access$102(Lcom/android/settings/permission/AppPermissionsEditor;Lcom/lbe/security/service/privacy/HIPSService;)Lcom/lbe/security/service/privacy/HIPSService;

    .line 386
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor$LBEConnection;->this$0:Lcom/android/settings/permission/AppPermissionsEditor;

    #calls: Lcom/android/settings/permission/AppPermissionsEditor;->initUI()V
    invoke-static {v0}, Lcom/android/settings/permission/AppPermissionsEditor;->access$200(Lcom/android/settings/permission/AppPermissionsEditor;)V

    .line 387
    const-string v0, "AppPermissionsEditor"

    const-string v1, "SDK Connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-void
.end method

.method public OnSDKDisconnected()V
    .locals 2

    .prologue
    .line 392
    const-string v0, "AppPermissionsEditor"

    const-string v1, "SDK Disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return-void
.end method
