.class public Lcom/android/settings/permission/PermDetailActivity;
.super Landroid/app/Activity;
.source "PermDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/permission/PermDetailActivity$LBEConnection;,
        Lcom/android/settings/permission/PermDetailActivity$PermAppAdapter;
    }
.end annotation


# instance fields
.field private mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

.field private mLBEConnection:Lcom/android/settings/permission/PermDetailActivity$LBEConnection;

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

.field private mPermission:I

.field private mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 207
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/permission/PermDetailActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/permission/PermDetailActivity;->mPackageList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/permission/PermDetailActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings/permission/PermDetailActivity;->mPackageList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/permission/PermDetailActivity;)Lcom/lbe/security/service/privacy/HIPSService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/permission/PermDetailActivity;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/permission/PermDetailActivity;Lcom/lbe/security/service/privacy/HIPSService;)Lcom/lbe/security/service/privacy/HIPSService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings/permission/PermDetailActivity;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/permission/PermDetailActivity;Lcom/lbe/security/bean/Package;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/permission/PermDetailActivity;->getDrawableId(Lcom/lbe/security/bean/Package;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/permission/PermDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings/permission/PermDetailActivity;->mPermission:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/permission/PermDetailActivity;)Lcom/lbe/security/service/sdkhelper/SDKHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/permission/PermDetailActivity;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/permission/PermDetailActivity;Lcom/lbe/security/service/sdkhelper/SDKHelper;)Lcom/lbe/security/service/sdkhelper/SDKHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings/permission/PermDetailActivity;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/permission/PermDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/permission/PermDetailActivity;->updateUI()V

    return-void
.end method

.method private getDrawableId(Lcom/lbe/security/bean/Package;)I
    .locals 4
    .parameter "packageInfo"

    .prologue
    .line 130
    const v1, 0x7f020002

    .line 132
    .local v1, drawableResId:I
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/permission/PermDetailActivity;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    iget v3, p0, Lcom/android/settings/permission/PermDetailActivity;->mPermission:I

    invoke-virtual {v2, p1, v3}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->getAction(Lcom/lbe/security/bean/Package;I)I
    :try_end_0
    .catch Lcom/lbe/security/sdk/SDKException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 133
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 146
    .end local v0           #action:I
    :goto_0
    return v1

    .line 135
    .restart local v0       #action:I
    :pswitch_0
    const v1, 0x7f020002

    .line 136
    goto :goto_0

    .line 138
    :pswitch_1
    const v1, 0x7f020182

    .line 139
    goto :goto_0

    .line 141
    :pswitch_2
    const v1, 0x7f020184

    goto :goto_0

    .line 144
    .end local v0           #action:I
    :catch_0
    move-exception v2

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateUI()V
    .locals 13

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 150
    const/4 v12, 0x0

    .line 151
    .local v12, title:Ljava/lang/String;
    const/4 v8, 0x0

    .line 153
    .local v8, desc:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/permission/PermDetailActivity;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    iget v3, p0, Lcom/android/settings/permission/PermDetailActivity;->mPermission:I

    invoke-virtual {v2, v3}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->getPermissionName(I)Ljava/lang/String;

    move-result-object v12

    .line 154
    iget-object v2, p0, Lcom/android/settings/permission/PermDetailActivity;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    iget v3, p0, Lcom/android/settings/permission/PermDetailActivity;->mPermission:I

    invoke-virtual {v2, v3}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->getPermissionDesc(I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/lbe/security/sdk/SDKException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 158
    :goto_0
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/permission/PermDetailActivity;->finish()V

    .line 205
    :goto_1
    return-void

    .line 162
    :cond_1
    new-instance v0, Lcom/lbe/security/service/privacy/PackageFilter;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-array v5, v5, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/settings/permission/PermDetailActivity;->mPermission:I

    aput v3, v5, v2

    move-object v2, v1

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/lbe/security/service/privacy/PackageFilter;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;[I)V

    .line 163
    .local v0, packageFilter:Lcom/lbe/security/service/privacy/PackageFilter;
    iget-object v2, p0, Lcom/android/settings/permission/PermDetailActivity;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

    invoke-virtual {v2, v0}, Lcom/lbe/security/service/privacy/HIPSService;->queryPackage(Lcom/lbe/security/service/privacy/PackageFilter;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/permission/PermDetailActivity;->mPackageList:Ljava/util/List;

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/permission/PermDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 166
    .local v6, actionBar:Landroid/app/ActionBar;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/permission/PermDetailActivity;->mPackageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 168
    const v2, 0x7f04006b

    invoke-virtual {p0, v2}, Lcom/android/settings/permission/PermDetailActivity;->setContentView(I)V

    .line 169
    const v2, 0x7f090104

    invoke-virtual {p0, v2}, Lcom/android/settings/permission/PermDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 170
    .local v11, secondTitle:Landroid/widget/TextView;
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/android/settings/permission/PermDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    .line 173
    .local v10, lv:Landroid/widget/ListView;
    new-instance v7, Lcom/android/settings/permission/PermDetailActivity$PermAppAdapter;

    invoke-direct {v7, p0, v1}, Lcom/android/settings/permission/PermDetailActivity$PermAppAdapter;-><init>(Lcom/android/settings/permission/PermDetailActivity;Lcom/android/settings/permission/PermDetailActivity$1;)V

    .line 174
    .local v7, adapter:Lcom/android/settings/permission/PermDetailActivity$PermAppAdapter;
    invoke-virtual {v10, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    move-object v9, v12

    .line 176
    .local v9, dialogTitle:Ljava/lang/String;
    new-instance v1, Lcom/android/settings/permission/PermDetailActivity$1;

    invoke-direct {v1, p0, v9, v7}, Lcom/android/settings/permission/PermDetailActivity$1;-><init>(Lcom/android/settings/permission/PermDetailActivity;Ljava/lang/String;Lcom/android/settings/permission/PermDetailActivity$PermAppAdapter;)V

    invoke-virtual {v10, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 155
    .end local v0           #packageFilter:Lcom/lbe/security/service/privacy/PackageFilter;
    .end local v6           #actionBar:Landroid/app/ActionBar;
    .end local v7           #adapter:Lcom/android/settings/permission/PermDetailActivity$PermAppAdapter;
    .end local v9           #dialogTitle:Ljava/lang/String;
    .end local v10           #lv:Landroid/widget/ListView;
    .end local v11           #secondTitle:Landroid/widget/TextView;
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/permission/PermDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 52
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "permission"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/permission/PermDetailActivity;->mPermission:I

    .line 53
    iget v1, p0, Lcom/android/settings/permission/PermDetailActivity;->mPermission:I

    if-nez v1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/permission/PermDetailActivity;->finish()V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v1, Lcom/android/settings/permission/PermDetailActivity$LBEConnection;

    const-string v2, "com.lbe.security.miui"

    invoke-direct {v1, p0, p0, v2}, Lcom/android/settings/permission/PermDetailActivity$LBEConnection;-><init>(Lcom/android/settings/permission/PermDetailActivity;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/permission/PermDetailActivity;->mLBEConnection:Lcom/android/settings/permission/PermDetailActivity$LBEConnection;

    .line 58
    iget-object v1, p0, Lcom/android/settings/permission/PermDetailActivity;->mLBEConnection:Lcom/android/settings/permission/PermDetailActivity$LBEConnection;

    invoke-static {v1}, Lcom/lbe/security/sdk/SDKService;->bindSDKService(Lcom/lbe/security/sdk/SDKConnection;)Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/permission/PermDetailActivity;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/settings/permission/PermDetailActivity;->mLBEConnection:Lcom/android/settings/permission/PermDetailActivity$LBEConnection;

    invoke-static {v0}, Lcom/lbe/security/sdk/SDKService;->unbindSDKService(Lcom/lbe/security/sdk/SDKConnection;)V

    .line 66
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 67
    return-void
.end method
