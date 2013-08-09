.class Lcom/android/settings/permission/PermDetailActivity$PermAppAdapter;
.super Landroid/widget/BaseAdapter;
.source "PermDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/permission/PermDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermAppAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/permission/PermDetailActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/permission/PermDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/permission/PermDetailActivity$PermAppAdapter;->this$0:Lcom/android/settings/permission/PermDetailActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/permission/PermDetailActivity;Lcom/android/settings/permission/PermDetailActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/permission/PermDetailActivity$PermAppAdapter;-><init>(Lcom/android/settings/permission/PermDetailActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/permission/PermDetailActivity$PermAppAdapter;->this$0:Lcom/android/settings/permission/PermDetailActivity;

    #getter for: Lcom/android/settings/permission/PermDetailActivity;->mPackageList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/permission/PermDetailActivity;->access$000(Lcom/android/settings/permission/PermDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 82
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 87
    const/4 v13, 0x0

    .line 88
    .local v13, view:Landroid/view/View;
    if-eqz p2, :cond_0

    .line 89
    move-object/from16 v13, p2

    .line 94
    :goto_0
    const v14, 0x7f09001a

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 95
    .local v7, iconView:Landroid/widget/ImageView;
    const v14, 0x7f09001b

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 96
    .local v3, appNameView:Landroid/widget/TextView;
    const v14, 0x7f090101

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 97
    .local v10, permLogView:Landroid/widget/TextView;
    const v14, 0x7f09001f

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 99
    .local v12, statusView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/permission/PermDetailActivity$PermAppAdapter;->this$0:Lcom/android/settings/permission/PermDetailActivity;

    #getter for: Lcom/android/settings/permission/PermDetailActivity;->mPackageList:Ljava/util/List;
    invoke-static {v14}, Lcom/android/settings/permission/PermDetailActivity;->access$000(Lcom/android/settings/permission/PermDetailActivity;)Ljava/util/List;

    move-result-object v14

    move/from16 v0, p1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lbe/security/bean/Package;

    .line 100
    .local v8, packageInfo:Lcom/lbe/security/bean/Package;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/permission/PermDetailActivity$PermAppAdapter;->this$0:Lcom/android/settings/permission/PermDetailActivity;

    invoke-virtual {v14}, Lcom/android/settings/permission/PermDetailActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 101
    .local v9, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v8}, Lcom/lbe/security/bean/Package;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, appName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/permission/PermDetailActivity$PermAppAdapter;->this$0:Lcom/android/settings/permission/PermDetailActivity;

    invoke-virtual {v14}, Lcom/android/settings/permission/PermDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f02013f

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 104
    .local v6, icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {v8}, Lcom/lbe/security/bean/Package;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 105
    .local v4, applicationInfo:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/permission/PermDetailActivity$PermAppAdapter;->this$0:Lcom/android/settings/permission/PermDetailActivity;

    invoke-static {v14, v4, v9}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 106
    invoke-virtual {v4, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 112
    .end local v4           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :goto_1
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    new-instance v5, Lcom/lbe/security/service/privacy/EventFilter;

    invoke-direct {v5}, Lcom/lbe/security/service/privacy/EventFilter;-><init>()V

    .line 115
    .local v5, eventFilter:Lcom/lbe/security/service/privacy/EventFilter;
    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v5, Lcom/lbe/security/service/privacy/EventFilter;->action:Ljava/lang/Integer;

    .line 116
    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    invoke-virtual {v8}, Lcom/lbe/security/bean/Package;->getUid()I

    move-result v16

    aput v16, v14, v15

    iput-object v14, v5, Lcom/lbe/security/service/privacy/EventFilter;->pkgId:[I

    .line 118
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/permission/PermDetailActivity$PermAppAdapter;->this$0:Lcom/android/settings/permission/PermDetailActivity;

    #getter for: Lcom/android/settings/permission/PermDetailActivity;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;
    invoke-static {v14}, Lcom/android/settings/permission/PermDetailActivity;->access$100(Lcom/android/settings/permission/PermDetailActivity;)Lcom/lbe/security/service/privacy/HIPSService;

    move-result-object v14

    invoke-virtual {v14, v5}, Lcom/lbe/security/service/privacy/HIPSService;->getEventLogCount(Lcom/lbe/security/service/privacy/EventFilter;)I

    move-result v1

    .line 119
    .local v1, acceptCount:I
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v5, Lcom/lbe/security/service/privacy/EventFilter;->action:Ljava/lang/Integer;

    .line 120
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/permission/PermDetailActivity$PermAppAdapter;->this$0:Lcom/android/settings/permission/PermDetailActivity;

    #getter for: Lcom/android/settings/permission/PermDetailActivity;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;
    invoke-static {v14}, Lcom/android/settings/permission/PermDetailActivity;->access$100(Lcom/android/settings/permission/PermDetailActivity;)Lcom/lbe/security/service/privacy/HIPSService;

    move-result-object v14

    invoke-virtual {v14, v5}, Lcom/lbe/security/service/privacy/HIPSService;->getEventLogCount(Lcom/lbe/security/service/privacy/EventFilter;)I

    move-result v11

    .line 122
    .local v11, rejectCount:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/permission/PermDetailActivity$PermAppAdapter;->this$0:Lcom/android/settings/permission/PermDetailActivity;

    const v15, 0x7f0c0762

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/android/settings/permission/PermDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/permission/PermDetailActivity$PermAppAdapter;->this$0:Lcom/android/settings/permission/PermDetailActivity;

    #calls: Lcom/android/settings/permission/PermDetailActivity;->getDrawableId(Lcom/lbe/security/bean/Package;)I
    invoke-static {v14, v8}, Lcom/android/settings/permission/PermDetailActivity;->access$200(Lcom/android/settings/permission/PermDetailActivity;Lcom/lbe/security/bean/Package;)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    return-object v13

    .line 91
    .end local v1           #acceptCount:I
    .end local v2           #appName:Ljava/lang/String;
    .end local v3           #appNameView:Landroid/widget/TextView;
    .end local v5           #eventFilter:Lcom/lbe/security/service/privacy/EventFilter;
    .end local v6           #icon:Landroid/graphics/drawable/Drawable;
    .end local v7           #iconView:Landroid/widget/ImageView;
    .end local v8           #packageInfo:Lcom/lbe/security/bean/Package;
    .end local v9           #packageManager:Landroid/content/pm/PackageManager;
    .end local v10           #permLogView:Landroid/widget/TextView;
    .end local v11           #rejectCount:I
    .end local v12           #statusView:Landroid/widget/ImageView;
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/permission/PermDetailActivity$PermAppAdapter;->this$0:Lcom/android/settings/permission/PermDetailActivity;

    invoke-virtual {v14}, Lcom/android/settings/permission/PermDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v14

    const v15, 0x7f04006a

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    goto/16 :goto_0

    .line 108
    .restart local v2       #appName:Ljava/lang/String;
    .restart local v3       #appNameView:Landroid/widget/TextView;
    .restart local v6       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v7       #iconView:Landroid/widget/ImageView;
    .restart local v8       #packageInfo:Lcom/lbe/security/bean/Package;
    .restart local v9       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v10       #permLogView:Landroid/widget/TextView;
    .restart local v12       #statusView:Landroid/widget/ImageView;
    :catch_0
    move-exception v14

    goto/16 :goto_1
.end method
