.class public Lcom/android/settings/KeyguardAppWidgetPickActivity;
.super Landroid/app/Activity;
.source "KeyguardAppWidgetPickActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings/AppWidgetLoader$ItemConstructor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;,
        Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/android/settings/AppWidgetLoader$ItemConstructor",
        "<",
        "Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;",
        ">;"
    }
.end annotation


# instance fields
.field private mAddingToKeyguard:Z

.field private mAppWidgetAdapter:Lcom/android/settings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

.field private mAppWidgetId:I

.field private mAppWidgetLoader:Lcom/android/settings/AppWidgetLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/AppWidgetLoader",
            "<",
            "Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mExtraConfigureOptions:Landroid/os/Bundle;

.field private mGridView:Landroid/widget/GridView;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mResultData:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAddingToKeyguard:Z

    .line 442
    return-void
.end method

.method private finishDelayedAndShowLockScreen(I)V
    .locals 10
    .parameter "appWidgetId"

    .prologue
    .line 590
    const-string v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 591
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 592
    .local v3, iWm:Landroid/view/IWindowManager;
    const/4 v4, 0x0

    .line 593
    .local v4, opts:Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 594
    new-instance v4, Landroid/os/Bundle;

    .end local v4           #opts:Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 595
    .restart local v4       #opts:Landroid/os/Bundle;
    const-string v6, "showappwidget"

    invoke-virtual {v4, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 598
    :cond_0
    :try_start_0
    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :goto_0
    const v6, 0x7f09006e

    invoke-virtual {p0, v6}, Lcom/android/settings/KeyguardAppWidgetPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 604
    .local v5, root:Landroid/view/ViewGroup;
    const/high16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 606
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 607
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 608
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 607
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 610
    :cond_1
    iget-object v6, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mGridView:Landroid/widget/GridView;

    new-instance v7, Lcom/android/settings/KeyguardAppWidgetPickActivity$1;

    invoke-direct {v7, p0}, Lcom/android/settings/KeyguardAppWidgetPickActivity$1;-><init>(Lcom/android/settings/KeyguardAppWidgetPickActivity;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/widget/GridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 615
    return-void

    .line 599
    .end local v1           #childCount:I
    .end local v2           #i:I
    .end local v5           #root:Landroid/view/ViewGroup;
    :catch_0
    move-exception v6

    goto :goto_0
.end method


# virtual methods
.method public createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;
    .locals 3
    .parameter "context"
    .parameter "info"
    .parameter "extras"

    .prologue
    .line 431
    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 433
    .local v1, label:Ljava/lang/CharSequence;
    new-instance v0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;

    invoke-direct {v0, p1, v1}, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 434
    .local v0, item:Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;
    iget v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iput v2, v0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->appWidgetPreviewId:I

    .line 435
    iget v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    iput v2, v0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->iconId:I

    .line 436
    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->packageName:Ljava/lang/String;

    .line 437
    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->className:Ljava/lang/String;

    .line 438
    iput-object p3, v0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->extras:Landroid/os/Bundle;

    .line 439
    return-object v0
.end method

.method public bridge synthetic createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/KeyguardAppWidgetPickActivity;->createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v8, 0x7e

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/16 v5, 0x7f

    .line 549
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 550
    if-eq p1, v8, :cond_0

    if-ne p1, v5, :cond_1

    .line 552
    :cond_0
    if-nez p3, :cond_2

    .line 553
    const/4 v1, 0x0

    .line 558
    .local v1, appWidgetId:I
    :goto_0
    if-ne p1, v8, :cond_4

    if-ne p2, v6, :cond_4

    .line 559
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 561
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    const/4 v0, 0x0

    .line 562
    .local v0, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 564
    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v4, :cond_3

    .line 566
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    .local v3, intent:Landroid/content/Intent;
    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 568
    const/high16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 569
    const-string v4, "appWidgetId"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 571
    invoke-virtual {p0, v3, v5}, Lcom/android/settings/KeyguardAppWidgetPickActivity;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 587
    .end local v0           #appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v1           #appWidgetId:I
    .end local v2           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 555
    :cond_2
    const-string v4, "appWidgetId"

    invoke-virtual {p3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .restart local v1       #appWidgetId:I
    goto :goto_0

    .line 574
    .restart local v0       #appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v2       #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :cond_3
    invoke-virtual {p0, v5, v6, p3}, Lcom/android/settings/KeyguardAppWidgetPickActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    .line 576
    .end local v0           #appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v2           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :cond_4
    if-ne p1, v5, :cond_5

    if-ne p2, v6, :cond_5

    .line 577
    iget-object v4, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v1, v7}, Lcom/android/internal/widget/LockPatternUtils;->addAppWidget(II)Z

    .line 578
    invoke-direct {p0, v1}, Lcom/android/settings/KeyguardAppWidgetPickActivity;->finishDelayedAndShowLockScreen(I)V

    goto :goto_1

    .line 580
    :cond_5
    iget-boolean v4, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAddingToKeyguard:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    if-eqz v4, :cond_6

    .line 582
    iget v4, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    invoke-static {v4}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetIdForSystem(I)V

    .line 584
    :cond_6
    invoke-direct {p0, v7}, Lcom/android/settings/KeyguardAppWidgetPickActivity;->finishDelayedAndShowLockScreen(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 91
    const v3, 0x7f040053

    invoke-virtual {p0, v3}, Lcom/android/settings/KeyguardAppWidgetPickActivity;->setContentView(I)V

    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const/4 v3, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/KeyguardAppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/KeyguardAppWidgetPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 99
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "appWidgetId"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    const-string v3, "appWidgetId"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    .line 105
    :goto_0
    const-string v3, "appWidgetOptions"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mExtraConfigureOptions:Landroid/os/Bundle;

    .line 107
    const v3, 0x7f0900d7

    invoke-virtual {p0, v3}, Lcom/android/settings/KeyguardAppWidgetPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mGridView:Landroid/widget/GridView;

    .line 108
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 109
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/settings/KeyguardAppWidgetPickActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/KeyguardAppWidgetPickActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 113
    .local v2, maxGridWidth:I
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v2, v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 116
    :cond_0
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 117
    new-instance v3, Lcom/android/settings/AppWidgetLoader;

    iget-object v4, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-direct {v3, p0, v4, p0}, Lcom/android/settings/AppWidgetLoader;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lcom/android/settings/AppWidgetLoader$ItemConstructor;)V

    iput-object v3, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetLoader:Lcom/android/settings/AppWidgetLoader;

    .line 118
    iget-object v3, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetLoader:Lcom/android/settings/AppWidgetLoader;

    invoke-virtual {p0}, Lcom/android/settings/KeyguardAppWidgetPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/AppWidgetLoader;->getItems(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mItems:Ljava/util/List;

    .line 119
    new-instance v3, Lcom/android/settings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

    iget-object v4, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mItems:Ljava/util/List;

    invoke-direct {v3, p0, v4}, Lcom/android/settings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetAdapter:Lcom/android/settings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

    .line 120
    iget-object v3, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mGridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetAdapter:Lcom/android/settings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    iget-object v3, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 123
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 124
    return-void

    .line 103
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #maxGridWidth:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/KeyguardAppWidgetPickActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetAdapter:Lcom/android/settings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetAdapter:Lcom/android/settings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

    invoke-virtual {v0}, Lcom/android/settings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;->cancelAllWidgetPreviewLoaders()V

    .line 544
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 545
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    .line 504
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v5, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mItems:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;

    .line 505
    .local v3, item:Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;
    invoke-virtual {v3}, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 508
    .local v2, intent:Landroid/content/Intent;
    iget-object v5, v3, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->extras:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 511
    const/4 v4, -0x1

    .line 512
    .local v4, result:I
    invoke-virtual {p0, v4, v2}, Lcom/android/settings/KeyguardAppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    .line 533
    :goto_0
    iget-boolean v5, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAddingToKeyguard:Z

    if-eqz v5, :cond_2

    .line 534
    const/16 v5, 0x7e

    iget-object v6, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mResultData:Landroid/content/Intent;

    invoke-virtual {p0, v5, v4, v6}, Lcom/android/settings/KeyguardAppWidgetPickActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 538
    :goto_1
    return-void

    .line 515
    .end local v4           #result:I
    :cond_0
    :try_start_0
    iget-boolean v5, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAddingToKeyguard:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    if-nez v5, :cond_1

    .line 517
    const v0, 0x4b455947

    .line 518
    .local v0, KEYGUARD_HOST_ID:I
    const v5, 0x4b455947

    invoke-static {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetIdForSystem(I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    .line 520
    .end local v0           #KEYGUARD_HOST_ID:I
    :cond_1
    iget-object v5, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v6, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mExtraConfigureOptions:Landroid/os/Bundle;

    invoke-virtual {v5, v6, v7, v8}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    const/4 v4, -0x1

    .line 531
    .restart local v4       #result:I
    :goto_2
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/KeyguardAppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    goto :goto_0

    .line 523
    .end local v4           #result:I
    :catch_0
    move-exception v1

    .line 529
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x0

    .restart local v4       #result:I
    goto :goto_2

    .line 536
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/KeyguardAppWidgetPickActivity;->finish()V

    goto :goto_1
.end method

.method setResultData(ILandroid/content/Intent;)V
    .locals 3
    .parameter "code"
    .parameter "intent"

    .prologue
    .line 132
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 133
    .local v0, result:Landroid/content/Intent;
    :goto_0
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    iput-object v0, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mResultData:Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/KeyguardAppWidgetPickActivity;->setResult(ILandroid/content/Intent;)V

    .line 136
    return-void

    .line 132
    .end local v0           #result:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    goto :goto_0
.end method

.method startActivityForResultSafely(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    const v2, 0x7f0c03c7

    const/4 v1, 0x0

    .line 619
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/KeyguardAppWidgetPickActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 626
    :goto_0
    return-void

    .line 620
    :catch_0
    move-exception v0

    .line 621
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 622
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 623
    .local v0, e:Ljava/lang/SecurityException;
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 624
    const-string v1, "KeyguardAppWidgetPickActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
