.class Lcom/android/settings/permission/PermManageActivity$LBEConnection;
.super Lcom/lbe/security/sdk/SDKConnection;
.source "PermManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/permission/PermManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LBEConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/permission/PermManageActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/permission/PermManageActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "sdkAppName"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/permission/PermManageActivity$LBEConnection;->this$0:Lcom/android/settings/permission/PermManageActivity;

    .line 59
    invoke-direct {p0, p2, p3}, Lcom/lbe/security/sdk/SDKConnection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public OnSDKConnected(Lcom/lbe/security/sdk/SDKService;)V
    .locals 6
    .parameter "service"

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 78
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {p1}, Lcom/lbe/security/sdk/SDKService;->getHIPSService()Lcom/lbe/security/service/privacy/HIPSService;

    move-result-object v1

    .line 68
    .local v1, hipSService:Lcom/lbe/security/service/privacy/HIPSService;
    invoke-virtual {p1}, Lcom/lbe/security/sdk/SDKService;->getSDKHelper()Lcom/lbe/security/service/sdkhelper/SDKHelper;

    move-result-object v3

    .line 69
    .local v3, sDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 70
    const/16 v4, 0xe7f

    invoke-virtual {v3, v4}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->setPermissionFilter(I)V

    .line 71
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/lbe/security/service/privacy/HIPSService;->setFilterSystemPackage(Z)V

    .line 72
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/4 v4, 0x3

    if-ge v2, v4, :cond_1

    .line 73
    iget-object v4, p0, Lcom/android/settings/permission/PermManageActivity$LBEConnection;->this$0:Lcom/android/settings/permission/PermManageActivity;

    #getter for: Lcom/android/settings/permission/PermManageActivity;->mActionBar:Lmiui/v5/app/MiuiActionBar;
    invoke-static {v4}, Lcom/android/settings/permission/PermManageActivity;->access$000(Lcom/android/settings/permission/PermManageActivity;)Lmiui/v5/app/MiuiActionBar;

    move-result-object v4

    invoke-interface {v4, v2}, Lmiui/v5/app/MiuiActionBar;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/permission/BasePermissionFragment;

    .line 74
    .local v0, fragment:Lcom/android/settings/permission/BasePermissionFragment;
    invoke-virtual {v0, v1, v3}, Lcom/android/settings/permission/BasePermissionFragment;->updateUI(Lcom/lbe/security/service/privacy/HIPSService;Lcom/lbe/security/service/sdkhelper/SDKHelper;)V

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 77
    .end local v0           #fragment:Lcom/android/settings/permission/BasePermissionFragment;
    .end local v2           #i:I
    :cond_1
    const-string v4, "LBE-Sec"

    const-string v5, "SDK Connected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public OnSDKDisconnected()V
    .locals 2

    .prologue
    .line 82
    const-string v0, "LBE-Sec"

    const-string v1, "SDK Disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method
