.class Lcom/android/settings/permission/PermDetailActivity$LBEConnection;
.super Lcom/lbe/security/sdk/SDKConnection;
.source "PermDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/permission/PermDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LBEConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/permission/PermDetailActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/permission/PermDetailActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "sdkAppName"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/settings/permission/PermDetailActivity$LBEConnection;->this$0:Lcom/android/settings/permission/PermDetailActivity;

    .line 209
    invoke-direct {p0, p2, p3}, Lcom/lbe/security/sdk/SDKConnection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 210
    return-void
.end method


# virtual methods
.method public OnSDKConnected(Lcom/lbe/security/sdk/SDKService;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/settings/permission/PermDetailActivity$LBEConnection;->this$0:Lcom/android/settings/permission/PermDetailActivity;

    invoke-virtual {p1}, Lcom/lbe/security/sdk/SDKService;->getHIPSService()Lcom/lbe/security/service/privacy/HIPSService;

    move-result-object v1

    #setter for: Lcom/android/settings/permission/PermDetailActivity;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;
    invoke-static {v0, v1}, Lcom/android/settings/permission/PermDetailActivity;->access$102(Lcom/android/settings/permission/PermDetailActivity;Lcom/lbe/security/service/privacy/HIPSService;)Lcom/lbe/security/service/privacy/HIPSService;

    .line 215
    iget-object v0, p0, Lcom/android/settings/permission/PermDetailActivity$LBEConnection;->this$0:Lcom/android/settings/permission/PermDetailActivity;

    invoke-virtual {p1}, Lcom/lbe/security/sdk/SDKService;->getSDKHelper()Lcom/lbe/security/service/sdkhelper/SDKHelper;

    move-result-object v1

    #setter for: Lcom/android/settings/permission/PermDetailActivity;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;
    invoke-static {v0, v1}, Lcom/android/settings/permission/PermDetailActivity;->access$502(Lcom/android/settings/permission/PermDetailActivity;Lcom/lbe/security/service/sdkhelper/SDKHelper;)Lcom/lbe/security/service/sdkhelper/SDKHelper;

    .line 216
    iget-object v0, p0, Lcom/android/settings/permission/PermDetailActivity$LBEConnection;->this$0:Lcom/android/settings/permission/PermDetailActivity;

    #getter for: Lcom/android/settings/permission/PermDetailActivity;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;
    invoke-static {v0}, Lcom/android/settings/permission/PermDetailActivity;->access$500(Lcom/android/settings/permission/PermDetailActivity;)Lcom/lbe/security/service/sdkhelper/SDKHelper;

    move-result-object v0

    const/16 v1, 0xe7f

    invoke-virtual {v0, v1}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->setPermissionFilter(I)V

    .line 217
    iget-object v0, p0, Lcom/android/settings/permission/PermDetailActivity$LBEConnection;->this$0:Lcom/android/settings/permission/PermDetailActivity;

    #getter for: Lcom/android/settings/permission/PermDetailActivity;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;
    invoke-static {v0}, Lcom/android/settings/permission/PermDetailActivity;->access$100(Lcom/android/settings/permission/PermDetailActivity;)Lcom/lbe/security/service/privacy/HIPSService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lbe/security/service/privacy/HIPSService;->setFilterSystemPackage(Z)V

    .line 218
    iget-object v0, p0, Lcom/android/settings/permission/PermDetailActivity$LBEConnection;->this$0:Lcom/android/settings/permission/PermDetailActivity;

    #calls: Lcom/android/settings/permission/PermDetailActivity;->updateUI()V
    invoke-static {v0}, Lcom/android/settings/permission/PermDetailActivity;->access$600(Lcom/android/settings/permission/PermDetailActivity;)V

    .line 219
    const-string v0, "LBE-Sec"

    const-string v1, "SDK Connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method public OnSDKDisconnected()V
    .locals 2

    .prologue
    .line 224
    const-string v0, "LBE-Sec"

    const-string v1, "SDK Disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void
.end method
