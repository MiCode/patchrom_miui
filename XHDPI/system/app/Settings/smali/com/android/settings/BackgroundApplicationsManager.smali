.class public Lcom/android/settings/BackgroundApplicationsManager;
.super Landroid/app/Activity;
.source "BackgroundApplicationsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter;,
        Lcom/android/settings/BackgroundApplicationsManager$ViewHolder;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mApplicationsInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCountView:Landroid/widget/TextView;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/BackgroundApplicationsManager;->mApplicationsInfos:Ljava/util/List;

    .line 29
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/BackgroundApplicationsManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/BackgroundApplicationsManager;->mApplicationsInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/BackgroundApplicationsManager;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/BackgroundApplicationsManager;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/BackgroundApplicationsManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/BackgroundApplicationsManager;->updateUi()V

    return-void
.end method

.method public static isThidPartApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .parameter "info"

    .prologue
    const/4 v0, 0x1

    .line 87
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 92
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadApps()V
    .locals 5

    .prologue
    .line 76
    iget-object v3, p0, Lcom/android/settings/BackgroundApplicationsManager;->mApplicationsInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 78
    iget-object v3, p0, Lcom/android/settings/BackgroundApplicationsManager;->mPm:Landroid/content/pm/PackageManager;

    const/16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 79
    .local v2, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 80
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    invoke-static {v1}, Lcom/android/settings/BackgroundApplicationsManager;->isThidPartApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x4000

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 81
    iget-object v3, p0, Lcom/android/settings/BackgroundApplicationsManager;->mApplicationsInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :cond_1
    return-void
.end method

.method private updateUi()V
    .locals 5

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/BackgroundApplicationsManager;->mCountView:Landroid/widget/TextView;

    const v1, 0x7f0c090d

    invoke-virtual {p0, v1}, Lcom/android/settings/BackgroundApplicationsManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/BackgroundApplicationsManager;->mApplicationsInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/BackgroundApplicationsManager;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 98
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 69
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/android/settings/BackgroundApplicationsManager;->loadApps()V

    .line 71
    invoke-direct {p0}, Lcom/android/settings/BackgroundApplicationsManager;->updateUi()V

    .line 73
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v2, 0x7f040010

    invoke-virtual {p0, v2}, Lcom/android/settings/BackgroundApplicationsManager;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/BackgroundApplicationsManager;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/BackgroundApplicationsManager;->mPm:Landroid/content/pm/PackageManager;

    .line 47
    invoke-direct {p0}, Lcom/android/settings/BackgroundApplicationsManager;->loadApps()V

    .line 49
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/android/settings/BackgroundApplicationsManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 50
    .local v1, lv:Landroid/widget/ListView;
    new-instance v2, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/BackgroundApplicationsManager$ListViewAdapter;-><init>(Lcom/android/settings/BackgroundApplicationsManager;Lcom/android/settings/BackgroundApplicationsManager$1;)V

    iput-object v2, p0, Lcom/android/settings/BackgroundApplicationsManager;->mAdapter:Landroid/widget/BaseAdapter;

    .line 51
    iget-object v2, p0, Lcom/android/settings/BackgroundApplicationsManager;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    const v2, 0x7f090018

    invoke-virtual {p0, v2}, Lcom/android/settings/BackgroundApplicationsManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/BackgroundApplicationsManager;->mCountView:Landroid/widget/TextView;

    .line 54
    iget-object v2, p0, Lcom/android/settings/BackgroundApplicationsManager;->mCountView:Landroid/widget/TextView;

    const v3, 0x7f0c090d

    invoke-virtual {p0, v3}, Lcom/android/settings/BackgroundApplicationsManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/BackgroundApplicationsManager;->mApplicationsInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const v2, 0x7f090019

    invoke-virtual {p0, v2}, Lcom/android/settings/BackgroundApplicationsManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 57
    .local v0, btn:Landroid/widget/Button;
    new-instance v2, Lcom/android/settings/BackgroundApplicationsManager$1;

    invoke-direct {v2, p0}, Lcom/android/settings/BackgroundApplicationsManager$1;-><init>(Lcom/android/settings/BackgroundApplicationsManager;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method
