.class public Lcom/android/settings/AppPickerV5$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppPickerV5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppPickerV5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/AppPickerV5$MyApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mPackageInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/AppPickerV5$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/AppPickerV5;


# direct methods
.method public constructor <init>(Lcom/android/settings/AppPickerV5;Landroid/content/Context;)V
    .locals 7
    .parameter
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 87
    iput-object p1, p0, Lcom/android/settings/AppPickerV5$AppListAdapter;->this$0:Lcom/android/settings/AppPickerV5;

    .line 88
    invoke-direct {p0, p2, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 84
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings/AppPickerV5$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    .line 89
    const-string v4, "layout_inflater"

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/android/settings/AppPickerV5$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 90
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 91
    .local v3, pkgs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 92
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 93
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_1

    .line 91
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_1
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    const-string v4, "user"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 103
    :cond_2
    new-instance v2, Lcom/android/settings/AppPickerV5$MyApplicationInfo;

    invoke-direct {v2, p1}, Lcom/android/settings/AppPickerV5$MyApplicationInfo;-><init>(Lcom/android/settings/AppPickerV5;)V

    .line 104
    .local v2, info:Lcom/android/settings/AppPickerV5$MyApplicationInfo;
    iput-object v0, v2, Lcom/android/settings/AppPickerV5$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    .line 105
    iget-object v4, v2, Lcom/android/settings/AppPickerV5$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Lcom/android/settings/AppPickerV5;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/settings/AppPickerV5$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    .line 106
    iget-object v4, p0, Lcom/android/settings/AppPickerV5$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 108
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #info:Lcom/android/settings/AppPickerV5$MyApplicationInfo;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/AppPickerV5$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-static {}, Lcom/android/settings/AppPickerV5;->access$200()Ljava/util/Comparator;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 109
    new-instance v2, Lcom/android/settings/AppPickerV5$MyApplicationInfo;

    invoke-direct {v2, p1}, Lcom/android/settings/AppPickerV5$MyApplicationInfo;-><init>(Lcom/android/settings/AppPickerV5;)V

    .line 110
    .restart local v2       #info:Lcom/android/settings/AppPickerV5$MyApplicationInfo;
    const v4, 0x7f0c0602

    invoke-virtual {p2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Lcom/android/settings/AppPickerV5$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    .line 111
    iget-object v4, p0, Lcom/android/settings/AppPickerV5$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-interface {v4, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 112
    iget-object v4, p0, Lcom/android/settings/AppPickerV5$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/settings/AppPickerV5$AppListAdapter;->addAll(Ljava/util/Collection;)V

    .line 113
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v5, 0x8

    .line 119
    iget-object v2, p0, Lcom/android/settings/AppPickerV5$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v2, p2}, Lcom/android/settings/applications/AppViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/applications/AppViewHolder;

    move-result-object v0

    .line 120
    .local v0, holder:Lcom/android/settings/applications/AppViewHolder;
    iget-object p2, v0, Lcom/android/settings/applications/AppViewHolder;->rootView:Landroid/view/View;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/settings/AppPickerV5$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/AppPickerV5$MyApplicationInfo;

    .line 122
    .local v1, info:Lcom/android/settings/AppPickerV5$MyApplicationInfo;
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/android/settings/AppPickerV5$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v2, v1, Lcom/android/settings/AppPickerV5$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/android/settings/AppPickerV5$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/settings/AppPickerV5$AppListAdapter;->this$0:Lcom/android/settings/AppPickerV5;

    invoke-virtual {v4}, Lcom/android/settings/AppPickerV5;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->appSize:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/android/settings/AppPickerV5$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :goto_0
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 132
    return-object p2

    .line 127
    :cond_0
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->appSize:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
