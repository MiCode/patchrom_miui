.class public Lcom/android/settings/SelectAutoRunApplicationActivity;
.super Landroid/app/Activity;
.source "SelectAutoRunApplicationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter;,
        Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;
    }
.end annotation


# instance fields
.field private mAlphaComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

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

.field private mList:Landroid/widget/ListView;

.field private mListState:[Z

.field private mPkgLabelPy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SelectAutoRunApplicationActivity;->mApplicationsInfos:Ljava/util/List;

    .line 43
    new-instance v0, Lcom/android/settings/SelectAutoRunApplicationActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SelectAutoRunApplicationActivity$1;-><init>(Lcom/android/settings/SelectAutoRunApplicationActivity;)V

    iput-object v0, p0, Lcom/android/settings/SelectAutoRunApplicationActivity;->mAlphaComparator:Ljava/util/Comparator;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SelectAutoRunApplicationActivity;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/SelectAutoRunApplicationActivity;->mPkgLabelPy:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SelectAutoRunApplicationActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/SelectAutoRunApplicationActivity;->mApplicationsInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/SelectAutoRunApplicationActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/SelectAutoRunApplicationActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/SelectAutoRunApplicationActivity;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/SelectAutoRunApplicationActivity;->mListState:[Z

    return-object v0
.end method

.method private getPy(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "pkgLabel"

    .prologue
    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Lmiui/util/HanziToPinyin;->getInstance()Lmiui/util/HanziToPinyin;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiui/util/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 96
    .local v1, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 97
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/HanziToPinyin$Token;

    iget-object v0, v2, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 100
    .end local v1           #tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    :cond_0
    return-object v0
.end method

.method private loadApps()V
    .locals 7

    .prologue
    .line 67
    iget-object v4, p0, Lcom/android/settings/SelectAutoRunApplicationActivity;->mApplicationsInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 69
    iget-object v4, p0, Lcom/android/settings/SelectAutoRunApplicationActivity;->mPm:Landroid/content/pm/PackageManager;

    const/16 v5, 0x2000

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 71
    .local v3, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 72
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    invoke-static {v2}, Lcom/android/settings/BackgroundApplicationsManager;->isThidPartApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x4000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 73
    iget-object v4, p0, Lcom/android/settings/SelectAutoRunApplicationActivity;->mApplicationsInfos:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v4, p0, Lcom/android/settings/SelectAutoRunApplicationActivity;->mPkgLabelPy:Ljava/util/Map;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 75
    iget-object v4, p0, Lcom/android/settings/SelectAutoRunApplicationActivity;->mPkgLabelPy:Ljava/util/Map;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/SelectAutoRunApplicationActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/SelectAutoRunApplicationActivity;->getPy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 79
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/SelectAutoRunApplicationActivity;->mApplicationsInfos:Ljava/util/List;

    iget-object v5, p0, Lcom/android/settings/SelectAutoRunApplicationActivity;->mAlphaComparator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 81
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 82
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Z

    iput-object v4, p0, Lcom/android/settings/SelectAutoRunApplicationActivity;->mListState:[Z

    .line 83
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/settings/SelectAutoRunApplicationActivity;->mListState:[Z

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 84
    iget-object v4, p0, Lcom/android/settings/SelectAutoRunApplicationActivity;->mListState:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 87
    .end local v0           #i:I
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/SelectAutoRunApplicationActivity;->mListState:[Z

    .line 90
    :cond_3
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/SelectAutoRunApplicationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SelectAutoRunApplicationActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 57
    const v0, 0x7f04000f

    invoke-virtual {p0, v0}, Lcom/android/settings/SelectAutoRunApplicationActivity;->setContentView(I)V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SelectAutoRunApplicationActivity;->mPkgLabelPy:Ljava/util/Map;

    .line 60
    invoke-direct {p0}, Lcom/android/settings/SelectAutoRunApplicationActivity;->loadApps()V

    .line 62
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/settings/SelectAutoRunApplicationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/SelectAutoRunApplicationActivity;->mList:Landroid/widget/ListView;

    .line 63
    iget-object v0, p0, Lcom/android/settings/SelectAutoRunApplicationActivity;->mList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/SelectAutoRunApplicationActivity$ListViewAdapter;-><init>(Lcom/android/settings/SelectAutoRunApplicationActivity;Lcom/android/settings/SelectAutoRunApplicationActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    return-void
.end method
