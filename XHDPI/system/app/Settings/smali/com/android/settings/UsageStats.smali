.class public Lcom/android/settings/UsageStats;
.super Landroid/app/Activity;
.source "UsageStats.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UsageStats$UsageStatsAdapter;,
        Lcom/android/settings/UsageStats$AppViewHolder;,
        Lcom/android/settings/UsageStats$UsageTimeComparator;,
        Lcom/android/settings/UsageStats$LaunchCountComparator;,
        Lcom/android/settings/UsageStats$AppNameComparator;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/UsageStats$UsageStatsAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mTypeSpinner:Landroid/widget/Spinner;

.field private mUsageStatsService:Lcom/android/internal/app/IUsageStats;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/UsageStats;)Lcom/android/internal/app/IUsageStats;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/UsageStats;->mUsageStatsService:Lcom/android/internal/app/IUsageStats;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/UsageStats;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/UsageStats;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/UsageStats;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/UsageStats;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 221
    const-string v0, "usagestats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IUsageStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IUsageStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UsageStats;->mUsageStatsService:Lcom/android/internal/app/IUsageStats;

    .line 222
    iget-object v0, p0, Lcom/android/settings/UsageStats;->mUsageStatsService:Lcom/android/internal/app/IUsageStats;

    if-nez v0, :cond_0

    .line 223
    const-string v0, "UsageStatsActivity"

    const-string v1, "Failed to retrieve usagestats service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :goto_0
    return-void

    .line 226
    :cond_0
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/UsageStats;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/UsageStats;->mInflater:Landroid/view/LayoutInflater;

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/UsageStats;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UsageStats;->mPm:Landroid/content/pm/PackageManager;

    .line 229
    const v0, 0x7f0400ba

    invoke-virtual {p0, v0}, Lcom/android/settings/UsageStats;->setContentView(I)V

    .line 230
    const v0, 0x7f0901c7

    invoke-virtual {p0, v0}, Lcom/android/settings/UsageStats;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/UsageStats;->mTypeSpinner:Landroid/widget/Spinner;

    .line 231
    iget-object v0, p0, Lcom/android/settings/UsageStats;->mTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 233
    const v0, 0x7f0901c8

    invoke-virtual {p0, v0}, Lcom/android/settings/UsageStats;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/UsageStats;->mListView:Landroid/widget/ListView;

    .line 236
    new-instance v0, Lcom/android/settings/UsageStats$UsageStatsAdapter;

    invoke-direct {v0, p0}, Lcom/android/settings/UsageStats$UsageStatsAdapter;-><init>(Lcom/android/settings/UsageStats;)V

    iput-object v0, p0, Lcom/android/settings/UsageStats;->mAdapter:Lcom/android/settings/UsageStats$UsageStatsAdapter;

    .line 237
    iget-object v0, p0, Lcom/android/settings/UsageStats;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/UsageStats;->mAdapter:Lcom/android/settings/UsageStats$UsageStatsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 242
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/UsageStats;->mAdapter:Lcom/android/settings/UsageStats$UsageStatsAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/UsageStats$UsageStatsAdapter;->sortList(I)V

    .line 243
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
