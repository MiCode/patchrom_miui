.class Lcom/android/settings/permission/ApplicationFragment$PermAppAdapter;
.super Landroid/widget/BaseAdapter;
.source "ApplicationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/permission/ApplicationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermAppAdapter"
.end annotation


# instance fields
.field private mPermList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lbe/security/bean/Package;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/permission/ApplicationFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/permission/ApplicationFragment;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lbe/security/bean/Package;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, permList:Ljava/util/List;,"Ljava/util/List<Lcom/lbe/security/bean/Package;>;"
    iput-object p1, p0, Lcom/android/settings/permission/ApplicationFragment$PermAppAdapter;->this$0:Lcom/android/settings/permission/ApplicationFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 95
    iput-object p2, p0, Lcom/android/settings/permission/ApplicationFragment$PermAppAdapter;->mPermList:Ljava/util/List;

    .line 96
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/permission/ApplicationFragment$PermAppAdapter;->mPermList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 114
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 119
    const/16 v18, 0x0

    .line 120
    .local v18, view:Landroid/view/View;
    if-eqz p2, :cond_1

    .line 121
    move-object/from16 v18, p2

    .line 126
    :goto_0
    const v19, 0x7f09001a

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 127
    .local v9, iconView:Landroid/widget/ImageView;
    const v19, 0x7f09001b

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 128
    .local v4, appNameView:Landroid/widget/TextView;
    const v19, 0x7f090101

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 129
    .local v13, permView:Landroid/widget/TextView;
    const v19, 0x7f09001f

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 130
    .local v16, statusView:Landroid/widget/ImageView;
    const v19, 0x7f090102

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 131
    .local v6, divider:Landroid/widget/ImageView;
    const v19, 0x7f090103

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 133
    .local v17, trustView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/permission/ApplicationFragment$PermAppAdapter;->mPermList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lbe/security/bean/Package;

    .line 134
    .local v11, packageInfo:Lcom/lbe/security/bean/Package;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/permission/ApplicationFragment$PermAppAdapter;->this$0:Lcom/android/settings/permission/ApplicationFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/permission/ApplicationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 135
    .local v2, activity:Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 136
    .local v12, packageManager:Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    .line 137
    .local v8, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11}, Lcom/lbe/security/bean/Package;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, appName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v11}, Lcom/lbe/security/bean/Package;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 140
    .local v5, applicationInfo:Landroid/content/pm/ApplicationInfo;
    invoke-static {v2, v5, v12}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 141
    invoke-virtual {v5, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 145
    .end local v5           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :goto_1
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {v11}, Lcom/lbe/security/bean/Package;->isTrust()Z

    move-result v19

    if-eqz v19, :cond_2

    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    invoke-virtual {v11}, Lcom/lbe/security/bean/Package;->isTrust()Z

    move-result v19

    if-eqz v19, :cond_3

    const/16 v19, 0x0

    :goto_3
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    const/4 v10, 0x0

    .line 152
    .local v10, num:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/permission/ApplicationFragment$PermAppAdapter;->this$0:Lcom/android/settings/permission/ApplicationFragment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/permission/ApplicationFragment;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->getPermissions(Lcom/lbe/security/bean/Package;)Ljava/util/List;

    move-result-object v15

    .line 153
    .local v15, permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v15, :cond_0

    .line 154
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v10

    .line 156
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/permission/ApplicationFragment$PermAppAdapter;->this$0:Lcom/android/settings/permission/ApplicationFragment;

    move-object/from16 v19, v0

    const v20, 0x7f0c0763

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Lcom/android/settings/permission/ApplicationFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 157
    .local v14, permissionText:Ljava/lang/String;
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    const v19, 0x60200d9

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    return-object v18

    .line 123
    .end local v2           #activity:Landroid/app/Activity;
    .end local v3           #appName:Ljava/lang/String;
    .end local v4           #appNameView:Landroid/widget/TextView;
    .end local v6           #divider:Landroid/widget/ImageView;
    .end local v8           #icon:Landroid/graphics/drawable/Drawable;
    .end local v9           #iconView:Landroid/widget/ImageView;
    .end local v10           #num:I
    .end local v11           #packageInfo:Lcom/lbe/security/bean/Package;
    .end local v12           #packageManager:Landroid/content/pm/PackageManager;
    .end local v13           #permView:Landroid/widget/TextView;
    .end local v14           #permissionText:Ljava/lang/String;
    .end local v15           #permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16           #statusView:Landroid/widget/ImageView;
    .end local v17           #trustView:Landroid/widget/TextView;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/permission/ApplicationFragment$PermAppAdapter;->this$0:Lcom/android/settings/permission/ApplicationFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/permission/ApplicationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v19

    const v20, 0x7f04006a

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    goto/16 :goto_0

    .line 142
    .restart local v2       #activity:Landroid/app/Activity;
    .restart local v3       #appName:Ljava/lang/String;
    .restart local v4       #appNameView:Landroid/widget/TextView;
    .restart local v6       #divider:Landroid/widget/ImageView;
    .restart local v8       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v9       #iconView:Landroid/widget/ImageView;
    .restart local v11       #packageInfo:Lcom/lbe/security/bean/Package;
    .restart local v12       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v13       #permView:Landroid/widget/TextView;
    .restart local v16       #statusView:Landroid/widget/ImageView;
    .restart local v17       #trustView:Landroid/widget/TextView;
    :catch_0
    move-exception v7

    .line 143
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 148
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const/16 v19, 0x8

    goto :goto_2

    .line 149
    :cond_3
    const/16 v19, 0x8

    goto :goto_3
.end method

.method public setPermList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lbe/security/bean/Package;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, permList:Ljava/util/List;,"Ljava/util/List<Lcom/lbe/security/bean/Package;>;"
    iput-object p1, p0, Lcom/android/settings/permission/ApplicationFragment$PermAppAdapter;->mPermList:Ljava/util/List;

    .line 100
    return-void
.end method
