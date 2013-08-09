.class public Lcom/android/settings/permission/PermissionFragment;
.super Lcom/android/settings/permission/BasePermissionFragment;
.source "PermissionFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/settings/permission/BasePermissionFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 24
    const v1, 0x7f04006f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 25
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/android/settings/permission/BasePermissionFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 31
    const v2, 0x7f090106

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 32
    .local v0, applicatonPermission:Landroid/view/View;
    const v2, 0x6010036

    invoke-virtual {v0, v2}, Landroid/view/View;->setAdditionalState(I)V

    .line 33
    new-instance v2, Lcom/android/settings/permission/PermissionFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/permission/PermissionFragment$1;-><init>(Lcom/android/settings/permission/PermissionFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v2, 0x7f090108

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 42
    .local v1, rootPermission:Landroid/view/View;
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    new-instance v2, Lcom/android/settings/permission/PermissionFragment$2;

    invoke-direct {v2, p0}, Lcom/android/settings/permission/PermissionFragment$2;-><init>(Lcom/android/settings/permission/PermissionFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v2, 0x6010037

    invoke-virtual {v1, v2}, Landroid/view/View;->setAdditionalState(I)V

    .line 51
    return-void

    .line 42
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
