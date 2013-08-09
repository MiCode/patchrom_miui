.class Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectAutoRunApplicationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SelectAutoRunApplicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListViewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SelectAutoRunApplicationActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/SelectAutoRunApplicationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter;->this$0:Lcom/android/settings/SelectAutoRunApplicationActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SelectAutoRunApplicationActivity;Lcom/android/settings/SelectAutoRunApplicationActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter;-><init>(Lcom/android/settings/SelectAutoRunApplicationActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter;->this$0:Lcom/android/settings/SelectAutoRunApplicationActivity;

    #getter for: Lcom/android/settings/SelectAutoRunApplicationActivity;->mApplicationsInfos:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/SelectAutoRunApplicationActivity;->access$200(Lcom/android/settings/SelectAutoRunApplicationActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 116
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, holder:Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;
    iget-object v5, p0, Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter;->this$0:Lcom/android/settings/SelectAutoRunApplicationActivity;

    #getter for: Lcom/android/settings/SelectAutoRunApplicationActivity;->mApplicationsInfos:Ljava/util/List;
    invoke-static {v5}, Lcom/android/settings/SelectAutoRunApplicationActivity;->access$200(Lcom/android/settings/SelectAutoRunApplicationActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 123
    .local v4, info:Landroid/content/pm/ApplicationInfo;
    iget-object v5, p0, Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter;->this$0:Lcom/android/settings/SelectAutoRunApplicationActivity;

    #getter for: Lcom/android/settings/SelectAutoRunApplicationActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/settings/SelectAutoRunApplicationActivity;->access$300(Lcom/android/settings/SelectAutoRunApplicationActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, appName:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 126
    new-instance v1, Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;

    .end local v1           #holder:Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;
    invoke-direct {v1, v9}, Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;-><init>(Lcom/android/settings/SelectAutoRunApplicationActivity$1;)V

    .line 127
    .restart local v1       #holder:Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;
    iget-object v5, p0, Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter;->this$0:Lcom/android/settings/SelectAutoRunApplicationActivity;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Lcom/android/settings/SelectAutoRunApplicationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 128
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f040011

    invoke-virtual {v3, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 129
    const v5, 0x7f09001a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 130
    const v5, 0x7f09001b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;->mAppName:Landroid/widget/TextView;

    .line 131
    const v5, 0x7f09001c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, v1, Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;->mEnable:Landroid/widget/Button;

    .line 132
    const v5, 0x7f09001d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;->mEnableText:Landroid/widget/TextView;

    .line 133
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 139
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v5, p0, Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter;->this$0:Lcom/android/settings/SelectAutoRunApplicationActivity;

    #getter for: Lcom/android/settings/SelectAutoRunApplicationActivity;->mListState:[Z
    invoke-static {v5}, Lcom/android/settings/SelectAutoRunApplicationActivity;->access$500(Lcom/android/settings/SelectAutoRunApplicationActivity;)[Z

    move-result-object v5

    aget-boolean v5, v5, p1

    if-eqz v5, :cond_1

    .line 140
    iget-object v5, v1, Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;->mEnable:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 141
    iget-object v5, v1, Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;->mEnableText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    :goto_1
    move-object v2, v1

    .line 149
    .local v2, holderClick:Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;
    iget-object v5, v1, Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;->mEnable:Landroid/widget/Button;

    const v6, 0x7f0c0910

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 150
    iget-object v5, v1, Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;->mEnable:Landroid/widget/Button;

    new-instance v6, Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter$1;

    invoke-direct {v6, p0, v4, v2, p1}, Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter$1;-><init>(Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;I)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v5, v1, Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter;->this$0:Lcom/android/settings/SelectAutoRunApplicationActivity;

    #getter for: Lcom/android/settings/SelectAutoRunApplicationActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/SelectAutoRunApplicationActivity;->access$300(Lcom/android/settings/SelectAutoRunApplicationActivity;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-object v5, v1, Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    return-object p2

    .line 136
    .end local v2           #holderClick:Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;
    check-cast v1, Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;

    .restart local v1       #holder:Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;
    goto :goto_0

    .line 143
    :cond_1
    iget-object v5, v1, Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;->mEnable:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 144
    iget-object v5, v1, Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;->mEnableText:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
