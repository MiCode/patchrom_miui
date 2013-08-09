.class public Lcom/android/settings/permission/PermManageActivity;
.super Landroid/app/Activity;
.source "PermManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/permission/PermManageActivity$LBEConnection;
    }
.end annotation


# instance fields
.field private mActionBar:Lmiui/v5/app/MiuiActionBar;

.field private mLBEConnection:Lcom/android/settings/permission/PermManageActivity$LBEConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/permission/PermManageActivity;)Lmiui/v5/app/MiuiActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/settings/permission/PermManageActivity;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    return-object v0
.end method

.method private createActionBar()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/permission/PermManageActivity;->getMiuiActionBar()Lmiui/v5/app/MiuiActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/permission/PermManageActivity;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    .line 40
    iget-object v0, p0, Lcom/android/settings/permission/PermManageActivity;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    invoke-virtual {p0}, Lcom/android/settings/permission/PermManageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lmiui/v5/app/MiuiActionBar;->setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;)V

    .line 43
    iget-object v0, p0, Lcom/android/settings/permission/PermManageActivity;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    invoke-interface {v0}, Lmiui/v5/app/MiuiActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 44
    const v0, 0x7f0c0745

    invoke-virtual {v2, v0}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 45
    iget-object v0, p0, Lcom/android/settings/permission/PermManageActivity;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    const-string v1, "PermissionFragment"

    const-class v3, Lcom/android/settings/permission/PermissionFragment;

    invoke-interface/range {v0 .. v5}, Lmiui/v5/app/MiuiActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    .line 47
    iget-object v0, p0, Lcom/android/settings/permission/PermManageActivity;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    invoke-interface {v0}, Lmiui/v5/app/MiuiActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 48
    const v0, 0x7f0c0746

    invoke-virtual {v2, v0}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 49
    iget-object v0, p0, Lcom/android/settings/permission/PermManageActivity;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    const-string v1, "ApplicationFragment"

    const-class v3, Lcom/android/settings/permission/ApplicationFragment;

    invoke-interface/range {v0 .. v5}, Lmiui/v5/app/MiuiActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    .line 51
    iget-object v0, p0, Lcom/android/settings/permission/PermManageActivity;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    invoke-interface {v0}, Lmiui/v5/app/MiuiActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 52
    const v0, 0x7f0c0747

    invoke-virtual {v2, v0}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 53
    iget-object v0, p0, Lcom/android/settings/permission/PermManageActivity;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    const-string v1, "LogFragment"

    const-class v3, Lcom/android/settings/permission/LogFragment;

    invoke-interface/range {v0 .. v5}, Lmiui/v5/app/MiuiActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    .line 54
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    new-instance v0, Lcom/android/settings/permission/PermManageActivity$LBEConnection;

    const-string v1, "com.lbe.security.miui"

    invoke-direct {v0, p0, p0, v1}, Lcom/android/settings/permission/PermManageActivity$LBEConnection;-><init>(Lcom/android/settings/permission/PermManageActivity;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/permission/PermManageActivity;->mLBEConnection:Lcom/android/settings/permission/PermManageActivity$LBEConnection;

    .line 27
    iget-object v0, p0, Lcom/android/settings/permission/PermManageActivity;->mLBEConnection:Lcom/android/settings/permission/PermManageActivity$LBEConnection;

    invoke-static {v0}, Lcom/lbe/security/sdk/SDKService;->bindSDKService(Lcom/lbe/security/sdk/SDKConnection;)Z

    .line 29
    invoke-direct {p0}, Lcom/android/settings/permission/PermManageActivity;->createActionBar()V

    .line 30
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/permission/PermManageActivity;->mLBEConnection:Lcom/android/settings/permission/PermManageActivity$LBEConnection;

    invoke-static {v0}, Lcom/lbe/security/sdk/SDKService;->unbindSDKService(Lcom/lbe/security/sdk/SDKConnection;)V

    .line 35
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 36
    return-void
.end method
