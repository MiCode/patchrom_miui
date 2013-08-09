.class Lcom/android/settings/permission/PermDetailActivity$1$1;
.super Ljava/lang/Object;
.source "PermDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/permission/PermDetailActivity$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/permission/PermDetailActivity$1;

.field final synthetic val$packageInfo:Lcom/lbe/security/bean/Package;


# direct methods
.method constructor <init>(Lcom/android/settings/permission/PermDetailActivity$1;Lcom/lbe/security/bean/Package;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/settings/permission/PermDetailActivity$1$1;->this$1:Lcom/android/settings/permission/PermDetailActivity$1;

    iput-object p2, p0, Lcom/android/settings/permission/PermDetailActivity$1$1;->val$packageInfo:Lcom/lbe/security/bean/Package;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "clickedIndex"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 194
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 195
    iget-object v2, p0, Lcom/android/settings/permission/PermDetailActivity$1$1;->this$1:Lcom/android/settings/permission/PermDetailActivity$1;

    iget-object v2, v2, Lcom/android/settings/permission/PermDetailActivity$1;->this$0:Lcom/android/settings/permission/PermDetailActivity;

    #getter for: Lcom/android/settings/permission/PermDetailActivity;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;
    invoke-static {v2}, Lcom/android/settings/permission/PermDetailActivity;->access$100(Lcom/android/settings/permission/PermDetailActivity;)Lcom/lbe/security/service/privacy/HIPSService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/permission/PermDetailActivity$1$1;->val$packageInfo:Lcom/lbe/security/bean/Package;

    iget-object v4, p0, Lcom/android/settings/permission/PermDetailActivity$1$1;->this$1:Lcom/android/settings/permission/PermDetailActivity$1;

    iget-object v4, v4, Lcom/android/settings/permission/PermDetailActivity$1;->this$0:Lcom/android/settings/permission/PermDetailActivity;

    #getter for: Lcom/android/settings/permission/PermDetailActivity;->mPermission:I
    invoke-static {v4}, Lcom/android/settings/permission/PermDetailActivity;->access$400(Lcom/android/settings/permission/PermDetailActivity;)I

    move-result v4

    rsub-int/lit8 v5, p2, 0x2

    invoke-virtual {v2, v3, v4, v5}, Lcom/lbe/security/service/privacy/HIPSService;->setPackagePermission(Lcom/lbe/security/bean/Package;II)V

    .line 196
    new-instance v0, Lcom/lbe/security/service/privacy/PackageFilter;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-array v5, v6, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/permission/PermDetailActivity$1$1;->this$1:Lcom/android/settings/permission/PermDetailActivity$1;

    iget-object v3, v3, Lcom/android/settings/permission/PermDetailActivity$1;->this$0:Lcom/android/settings/permission/PermDetailActivity;

    #getter for: Lcom/android/settings/permission/PermDetailActivity;->mPermission:I
    invoke-static {v3}, Lcom/android/settings/permission/PermDetailActivity;->access$400(Lcom/android/settings/permission/PermDetailActivity;)I

    move-result v3

    aput v3, v5, v2

    move-object v2, v1

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/lbe/security/service/privacy/PackageFilter;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;[I)V

    .line 197
    .local v0, packageFilter:Lcom/lbe/security/service/privacy/PackageFilter;
    iget-object v1, p0, Lcom/android/settings/permission/PermDetailActivity$1$1;->this$1:Lcom/android/settings/permission/PermDetailActivity$1;

    iget-object v1, v1, Lcom/android/settings/permission/PermDetailActivity$1;->this$0:Lcom/android/settings/permission/PermDetailActivity;

    iget-object v2, p0, Lcom/android/settings/permission/PermDetailActivity$1$1;->this$1:Lcom/android/settings/permission/PermDetailActivity$1;

    iget-object v2, v2, Lcom/android/settings/permission/PermDetailActivity$1;->this$0:Lcom/android/settings/permission/PermDetailActivity;

    #getter for: Lcom/android/settings/permission/PermDetailActivity;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;
    invoke-static {v2}, Lcom/android/settings/permission/PermDetailActivity;->access$100(Lcom/android/settings/permission/PermDetailActivity;)Lcom/lbe/security/service/privacy/HIPSService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lbe/security/service/privacy/HIPSService;->queryPackage(Lcom/lbe/security/service/privacy/PackageFilter;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/android/settings/permission/PermDetailActivity;->mPackageList:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/android/settings/permission/PermDetailActivity;->access$002(Lcom/android/settings/permission/PermDetailActivity;Ljava/util/List;)Ljava/util/List;

    .line 198
    iget-object v1, p0, Lcom/android/settings/permission/PermDetailActivity$1$1;->this$1:Lcom/android/settings/permission/PermDetailActivity$1;

    iget-object v1, v1, Lcom/android/settings/permission/PermDetailActivity$1;->val$adapter:Lcom/android/settings/permission/PermDetailActivity$PermAppAdapter;

    invoke-virtual {v1}, Lcom/android/settings/permission/PermDetailActivity$PermAppAdapter;->notifyDataSetChanged()V

    .line 199
    return-void
.end method
