.class Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "BackgroundApplicationsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BackgroundApplicationsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListViewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BackgroundApplicationsManager;


# direct methods
.method private constructor <init>(Lcom/android/settings/BackgroundApplicationsManager;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter;->this$0:Lcom/android/settings/BackgroundApplicationsManager;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/BackgroundApplicationsManager;Lcom/android/settings/BackgroundApplicationsManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter;-><init>(Lcom/android/settings/BackgroundApplicationsManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter;->this$0:Lcom/android/settings/BackgroundApplicationsManager;

    #getter for: Lcom/android/settings/BackgroundApplicationsManager;->mApplicationsInfos:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/BackgroundApplicationsManager;->access$100(Lcom/android/settings/BackgroundApplicationsManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 113
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, holder:Lcom/android/settings/BackgroundApplicationsManager$ViewHolder;
    iget-object v5, p0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter;->this$0:Lcom/android/settings/BackgroundApplicationsManager;

    #getter for: Lcom/android/settings/BackgroundApplicationsManager;->mApplicationsInfos:Ljava/util/List;
    invoke-static {v5}, Lcom/android/settings/BackgroundApplicationsManager;->access$100(Lcom/android/settings/BackgroundApplicationsManager;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 120
    .local v4, info:Landroid/content/pm/ApplicationInfo;
    iget-object v5, p0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter;->this$0:Lcom/android/settings/BackgroundApplicationsManager;

    #getter for: Lcom/android/settings/BackgroundApplicationsManager;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/settings/BackgroundApplicationsManager;->access$200(Lcom/android/settings/BackgroundApplicationsManager;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, appName:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 123
    new-instance v1, Lcom/android/settings/BackgroundApplicationsManager$ViewHolder;

    .end local v1           #holder:Lcom/android/settings/BackgroundApplicationsManager$ViewHolder;
    invoke-direct {v1, v7}, Lcom/android/settings/BackgroundApplicationsManager$ViewHolder;-><init>(Lcom/android/settings/BackgroundApplicationsManager$1;)V

    .line 124
    .restart local v1       #holder:Lcom/android/settings/BackgroundApplicationsManager$ViewHolder;
    iget-object v5, p0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter;->this$0:Lcom/android/settings/BackgroundApplicationsManager;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Lcom/android/settings/BackgroundApplicationsManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 125
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f040011

    invoke-virtual {v3, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 126
    const v5, 0x7f09001a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/android/settings/BackgroundApplicationsManager$ViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 127
    const v5, 0x7f09001b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/android/settings/BackgroundApplicationsManager$ViewHolder;->mAppName:Landroid/widget/TextView;

    .line 128
    const v5, 0x7f09001c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, v1, Lcom/android/settings/BackgroundApplicationsManager$ViewHolder;->mEnable:Landroid/widget/Button;

    .line 129
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 135
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v5, v1, Lcom/android/settings/BackgroundApplicationsManager$ViewHolder;->mEnable:Landroid/widget/Button;

    new-instance v6, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1;

    invoke-direct {v6, p0, v0, v4, p1}, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter$1;-><init>(Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;I)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v5, p0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter;->this$0:Lcom/android/settings/BackgroundApplicationsManager;

    invoke-virtual {v5}, Lcom/android/settings/BackgroundApplicationsManager;->getApplication()Landroid/app/Application;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter;->this$0:Lcom/android/settings/BackgroundApplicationsManager;

    #getter for: Lcom/android/settings/BackgroundApplicationsManager;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/BackgroundApplicationsManager;->access$200(Lcom/android/settings/BackgroundApplicationsManager;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 159
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    iget-object v5, v1, Lcom/android/settings/BackgroundApplicationsManager$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object v5, v1, Lcom/android/settings/BackgroundApplicationsManager$ViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    return-object p2

    .line 132
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/android/settings/BackgroundApplicationsManager$ViewHolder;
    check-cast v1, Lcom/android/settings/BackgroundApplicationsManager$ViewHolder;

    .restart local v1       #holder:Lcom/android/settings/BackgroundApplicationsManager$ViewHolder;
    goto :goto_0
.end method
