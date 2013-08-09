.class public Lcom/android/settings/permission/ApplicationFragment;
.super Lcom/android/settings/permission/BasePermissionFragment;
.source "ApplicationFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/permission/ApplicationFragment$PermAppAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/permission/ApplicationFragment$PermAppAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lbe/security/bean/Package;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/permission/BasePermissionFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/permission/ApplicationFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/permission/ApplicationFragment;->mPackageList:Ljava/util/List;

    return-object v0
.end method

.method private updateTitle()V
    .locals 5

    .prologue
    .line 50
    iget-object v1, p0, Lcom/android/settings/permission/ApplicationFragment;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    if-nez v1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 53
    :cond_0
    const v1, 0x7f0c0749

    invoke-virtual {p0, v1}, Lcom/android/settings/permission/ApplicationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, titleText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/permission/ApplicationFragment;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    invoke-virtual {v1}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->getHIPSEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    const v1, 0x7f0c0748

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/permission/ApplicationFragment;->mPackageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/permission/ApplicationFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/android/settings/permission/ApplicationFragment;->mSecondTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 69
    const v1, 0x7f04006b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/android/settings/permission/BasePermissionFragment;->onResume()V

    .line 63
    invoke-direct {p0}, Lcom/android/settings/permission/ApplicationFragment;->updateTitle()V

    .line 64
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Lcom/android/settings/permission/BasePermissionFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 76
    const v0, 0x7f090104

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/permission/ApplicationFragment;->mSecondTitle:Landroid/widget/TextView;

    .line 77
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/permission/ApplicationFragment;->mListView:Landroid/widget/ListView;

    .line 78
    iget-object v0, p0, Lcom/android/settings/permission/ApplicationFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/settings/permission/ApplicationFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/permission/ApplicationFragment$1;-><init>(Lcom/android/settings/permission/ApplicationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 89
    return-void
.end method

.method public updateUI()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 38
    iget-object v6, p0, Lcom/android/settings/permission/ApplicationFragment;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

    new-instance v0, Lcom/lbe/security/service/privacy/PackageFilter;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Lcom/lbe/security/service/sdkhelper/SDKConstants;->PERM_FILTER_HIPS:[I

    move-object v2, v1

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/lbe/security/service/privacy/PackageFilter;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;[I)V

    invoke-virtual {v6, v0}, Lcom/lbe/security/service/privacy/HIPSService;->queryPackage(Lcom/lbe/security/service/privacy/PackageFilter;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/permission/ApplicationFragment;->mPackageList:Ljava/util/List;

    .line 39
    iget-object v0, p0, Lcom/android/settings/permission/ApplicationFragment;->mAdapter:Lcom/android/settings/permission/ApplicationFragment$PermAppAdapter;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/android/settings/permission/ApplicationFragment$PermAppAdapter;

    iget-object v1, p0, Lcom/android/settings/permission/ApplicationFragment;->mPackageList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/permission/ApplicationFragment$PermAppAdapter;-><init>(Lcom/android/settings/permission/ApplicationFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/permission/ApplicationFragment;->mAdapter:Lcom/android/settings/permission/ApplicationFragment$PermAppAdapter;

    .line 41
    iget-object v0, p0, Lcom/android/settings/permission/ApplicationFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/permission/ApplicationFragment;->mAdapter:Lcom/android/settings/permission/ApplicationFragment$PermAppAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/permission/ApplicationFragment;->updateTitle()V

    .line 47
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/settings/permission/ApplicationFragment;->mAdapter:Lcom/android/settings/permission/ApplicationFragment$PermAppAdapter;

    iget-object v1, p0, Lcom/android/settings/permission/ApplicationFragment;->mPackageList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/settings/permission/ApplicationFragment$PermAppAdapter;->setPermList(Ljava/util/List;)V

    .line 44
    iget-object v0, p0, Lcom/android/settings/permission/ApplicationFragment;->mAdapter:Lcom/android/settings/permission/ApplicationFragment$PermAppAdapter;

    invoke-virtual {v0}, Lcom/android/settings/permission/ApplicationFragment$PermAppAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
