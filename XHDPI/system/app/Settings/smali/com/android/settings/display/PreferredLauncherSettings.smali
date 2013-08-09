.class public Lcom/android/settings/display/PreferredLauncherSettings;
.super Landroid/app/ListActivity;
.source "PreferredLauncherSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/PreferredLauncherSettings;Landroid/content/pm/ResolveInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/display/PreferredLauncherSettings;->setPreferredLauncher(Landroid/content/pm/ResolveInfo;)V

    return-void
.end method

.method static isSame(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .locals 2
    .parameter "ri1"
    .parameter "ri2"

    .prologue
    .line 132
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPreferredLauncher(Landroid/content/pm/ResolveInfo;)V
    .locals 12
    .parameter "ri"

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/settings/display/PreferredLauncherSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;

    .line 97
    .local v1, adapter:Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;
    invoke-virtual {p0}, Lcom/android/settings/display/PreferredLauncherSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 100
    .local v6, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.MAIN"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v9, "android.intent.category.HOME"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1}, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->getCount()I

    move-result v0

    .line 105
    .local v0, N:I
    new-array v8, v0, [Landroid/content/ComponentName;

    .line 106
    .local v8, set:[Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 107
    .local v2, bestMatch:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 108
    invoke-virtual {v1, v4}, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->getItem(I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 109
    .local v7, r:Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v8, v4

    .line 111
    iget v9, v7, Landroid/content/pm/ResolveInfo;->match:I

    if-le v9, v2, :cond_0

    iget v2, v7, Landroid/content/pm/ResolveInfo;->match:I

    .line 107
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 113
    .end local v7           #r:Landroid/content/pm/ResolveInfo;
    :cond_1
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.no.such.packagename"

    const-string v11, "com.no.such.packagename.no.such.class"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v3, v2, v8, v9}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 115
    const-string v9, "com.no.such.packagename"

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 117
    if-eqz p1, :cond_2

    .line 118
    const-string v9, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 119
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v3, v2, v8, v9}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 127
    :goto_1
    invoke-virtual {v1, p1}, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->setCurrent(Landroid/content/pm/ResolveInfo;)V

    .line 128
    invoke-virtual {v1}, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->notifyDataSetChanged()V

    .line 129
    return-void

    .line 122
    :cond_2
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v5, intent:Landroid/content/Intent;
    const-string v9, "android.intent.category.HOME"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const/4 v9, 0x0

    invoke-virtual {v6, v5, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v10, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/display/PreferredLauncherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 40
    .local v2, list:Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 42
    .local v4, lp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_1

    move-object v5, v4

    .line 43
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 47
    .local v5, mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/display/PreferredLauncherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x60a0039

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/display/PreferredLauncherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x60a0038

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 49
    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/display/PreferredLauncherSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 52
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 53
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/display/PreferredLauncherSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 57
    .local v6, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, intent:Landroid/content/Intent;
    const-string v8, "android.intent.category.HOME"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {v6, v1, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 60
    .local v3, lists:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v6, v1, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 62
    .local v7, ri:Landroid/content/pm/ResolveInfo;
    new-instance v8, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;

    invoke-direct {v8, p0, v3, v7}, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {p0, v8}, Lcom/android/settings/display/PreferredLauncherSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    return-void

    .line 45
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #lists:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    .end local v7           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    new-instance v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .restart local v5       #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 67
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/display/PreferredLauncherSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;

    .line 70
    .local v0, adapter:Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;
    invoke-virtual {v0, p3}, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->getItem(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 71
    .local v1, ri:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0}, Lcom/android/settings/display/PreferredLauncherSettings$ResolveListAdapter;->getCurrent()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/display/PreferredLauncherSettings;->isSame(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-boolean v2, v1, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v2, :cond_1

    .line 76
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c07bf

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c07c1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c07c2

    new-instance v4, Lcom/android/settings/display/PreferredLauncherSettings$2;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/display/PreferredLauncherSettings$2;-><init>(Lcom/android/settings/display/PreferredLauncherSettings;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c07c3

    new-instance v4, Lcom/android/settings/display/PreferredLauncherSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/display/PreferredLauncherSettings$1;-><init>(Lcom/android/settings/display/PreferredLauncherSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 91
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/display/PreferredLauncherSettings;->setPreferredLauncher(Landroid/content/pm/ResolveInfo;)V

    goto :goto_0
.end method
