.class Lcom/android/settings/permission/PermDetailActivity$1;
.super Ljava/lang/Object;
.source "PermDetailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/permission/PermDetailActivity;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/permission/PermDetailActivity;

.field final synthetic val$adapter:Lcom/android/settings/permission/PermDetailActivity$PermAppAdapter;

.field final synthetic val$dialogTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/permission/PermDetailActivity;Ljava/lang/String;Lcom/android/settings/permission/PermDetailActivity$PermAppAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/settings/permission/PermDetailActivity$1;->this$0:Lcom/android/settings/permission/PermDetailActivity;

    iput-object p2, p0, Lcom/android/settings/permission/PermDetailActivity$1;->val$dialogTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/permission/PermDetailActivity$1;->val$adapter:Lcom/android/settings/permission/PermDetailActivity$PermAppAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/android/settings/permission/PermDetailActivity$1;->this$0:Lcom/android/settings/permission/PermDetailActivity;

    #getter for: Lcom/android/settings/permission/PermDetailActivity;->mPackageList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings/permission/PermDetailActivity;->access$000(Lcom/android/settings/permission/PermDetailActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lbe/security/bean/Package;

    .line 181
    .local v3, packageInfo:Lcom/lbe/security/bean/Package;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/permission/PermDetailActivity$1;->this$0:Lcom/android/settings/permission/PermDetailActivity;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 182
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/settings/permission/PermDetailActivity$1;->val$dialogTitle:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 184
    const/4 v1, 0x2

    .line 186
    .local v1, clickedIndex:I
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/permission/PermDetailActivity$1;->this$0:Lcom/android/settings/permission/PermDetailActivity;

    #getter for: Lcom/android/settings/permission/PermDetailActivity;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;
    invoke-static {v4}, Lcom/android/settings/permission/PermDetailActivity;->access$500(Lcom/android/settings/permission/PermDetailActivity;)Lcom/lbe/security/service/sdkhelper/SDKHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/permission/PermDetailActivity$1;->this$0:Lcom/android/settings/permission/PermDetailActivity;

    #getter for: Lcom/android/settings/permission/PermDetailActivity;->mPermission:I
    invoke-static {v5}, Lcom/android/settings/permission/PermDetailActivity;->access$400(Lcom/android/settings/permission/PermDetailActivity;)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->getAction(Lcom/lbe/security/bean/Package;I)I
    :try_end_0
    .catch Lcom/lbe/security/sdk/SDKException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 189
    :goto_0
    rsub-int/lit8 v1, v1, 0x2

    .line 190
    iget-object v4, p0, Lcom/android/settings/permission/PermDetailActivity$1;->this$0:Lcom/android/settings/permission/PermDetailActivity;

    invoke-virtual {v4}, Lcom/android/settings/permission/PermDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080075

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 191
    .local v2, entries:[Ljava/lang/CharSequence;
    new-instance v4, Lcom/android/settings/permission/PermDetailActivity$1$1;

    invoke-direct {v4, p0, v3}, Lcom/android/settings/permission/PermDetailActivity$1$1;-><init>(Lcom/android/settings/permission/PermDetailActivity$1;Lcom/lbe/security/bean/Package;)V

    invoke-virtual {v0, v2, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 201
    const/high16 v4, 0x104

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 202
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 203
    return-void

    .line 187
    .end local v2           #entries:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
