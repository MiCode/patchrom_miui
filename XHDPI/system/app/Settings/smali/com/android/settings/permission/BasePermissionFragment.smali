.class public Lcom/android/settings/permission/BasePermissionFragment;
.super Landroid/app/Fragment;
.source "BasePermissionFragment.java"


# instance fields
.field protected mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

.field private mNeedUpdate:Z

.field protected mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onResume()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 28
    iget-boolean v0, p0, Lcom/android/settings/permission/BasePermissionFragment;->mNeedUpdate:Z

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/android/settings/permission/BasePermissionFragment;->updateUI()V

    .line 31
    :cond_0
    return-void
.end method

.method public updateUI()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public updateUI(Lcom/lbe/security/service/privacy/HIPSService;Lcom/lbe/security/service/sdkhelper/SDKHelper;)V
    .locals 1
    .parameter "hipSService"
    .parameter "sDKHelper"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/android/settings/permission/BasePermissionFragment;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

    .line 15
    iput-object p2, p0, Lcom/android/settings/permission/BasePermissionFragment;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/permission/BasePermissionFragment;->mNeedUpdate:Z

    .line 17
    invoke-virtual {p0}, Lcom/android/settings/permission/BasePermissionFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/android/settings/permission/BasePermissionFragment;->updateUI()V

    .line 20
    :cond_0
    return-void
.end method
