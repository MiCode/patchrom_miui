.class Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteViewsMetaData"
.end annotation


# instance fields
.field count:I

.field hasStableIds:Z

.field mFirstView:Landroid/widget/RemoteViews;

.field mFirstViewHeight:I

.field private final mTypeIdIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mUserLoadingView:Landroid/widget/RemoteViews;

.field viewTypeCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    .line 417
    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->reset()V

    .line 418
    return-void
.end method

.method static synthetic access$2000(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;Landroid/view/LayoutInflater;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .locals 1
    .param p0, "x0"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Landroid/view/ViewGroup;
    .param p4, "x4"    # Ljava/lang/Object;
    .param p5, "x5"    # Landroid/view/LayoutInflater;
    .param p6, "x6"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 401
    invoke-direct/range {p0 .. p6}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->createLoadingView(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;Landroid/view/LayoutInflater;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    move-result-object v0

    return-object v0
.end method

.method private createLoadingView(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;Landroid/view/LayoutInflater;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "lock"    # Ljava/lang/Object;
    .param p5, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p6, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 473
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 474
    .local v1, "context":Landroid/content/Context;
    new-instance v6, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    invoke-direct {v6, v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;-><init>(Landroid/content/Context;)V

    .line 477
    .local v6, "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    monitor-enter p4

    .line 478
    const/4 v2, 0x0

    .line 480
    .local v2, "customLoadingViewAvailable":Z
    :try_start_0
    iget-object v9, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_0

    .line 483
    :try_start_1
    iget-object v9, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p6

    invoke-virtual {v9, v10, p3, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v8

    .line 485
    .local v8, "loadingView":Landroid/view/View;
    sget v9, Lcom/android/internal/R$id;->rowTypeId:I

    new-instance v10, Ljava/lang/Integer;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 487
    invoke-virtual {v6, v8}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    const/4 v2, 0x1

    .line 494
    .end local v8    # "loadingView":Landroid/view/View;
    :cond_0
    :goto_0
    if-nez v2, :cond_2

    .line 497
    :try_start_2
    iget v9, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gez v9, :cond_1

    .line 499
    :try_start_3
    iget-object v9, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p6

    invoke-virtual {v9, v10, p3, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v5

    .line 500
    .local v5, "firstView":Landroid/view/View;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/view/View;->measure(II)V

    .line 503
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iput v9, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    .line 504
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 515
    .end local v5    # "firstView":Landroid/view/View;
    :cond_1
    :goto_1
    :try_start_4
    sget v9, Lcom/android/internal/R$layout;->remote_views_adapter_default_loading_view:I

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 518
    .local v7, "loadingTextView":Landroid/widget/TextView;
    iget v9, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setHeight(I)V

    .line 519
    new-instance v9, Ljava/lang/Integer;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 521
    invoke-virtual {v6, v7}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->addView(Landroid/view/View;)V

    .line 523
    .end local v7    # "loadingTextView":Landroid/widget/TextView;
    :cond_2
    monitor-exit p4

    .line 525
    return-object v6

    .line 489
    :catch_0
    move-exception v4

    .line 490
    .local v4, "e":Ljava/lang/Exception;
    const-string v9, "RemoteViewsAdapter"

    const-string v10, "Error inflating custom loading view, using default loadingview instead"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 523
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    monitor-exit p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v9

    .line 505
    :catch_1
    move-exception v4

    .line 506
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v3, v9, Landroid/util/DisplayMetrics;->density:F

    .line 507
    .local v3, "density":F
    const/high16 v9, 0x42480000    # 50.0f

    mul-float/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    .line 509
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    .line 510
    const-string v9, "RemoteViewsAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error inflating first RemoteViews"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public getMappedViewType(I)I
    .locals 4
    .param p1, "typeId"    # I

    .prologue
    .line 450
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 456
    :goto_0
    return v0

    .line 454
    :cond_0
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 455
    .local v0, "incrementalTypeId":I
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public isViewTypeInRange(I)Z
    .locals 2
    .param p1, "typeId"    # I

    .prologue
    .line 461
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->getMappedViewType(I)I

    move-result v0

    .line 462
    .local v0, "mappedType":I
    iget v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    if-lt v0, v1, :cond_0

    .line 463
    const/4 v1, 0x0

    .line 465
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 430
    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 433
    iput v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    .line 434
    iput-boolean v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    .line 435
    iput-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;

    .line 436
    iput-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    .line 437
    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    .line 438
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 439
    return-void
.end method

.method public set(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;)V
    .locals 2
    .param p1, "d"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    .prologue
    .line 421
    monitor-enter p1

    .line 422
    :try_start_0
    iget v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 423
    iget v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    .line 424
    iget-boolean v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    .line 425
    iget-object v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;

    iget-object v1, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->setLoadingViewTemplates(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 426
    monitor-exit p1

    .line 427
    return-void

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLoadingViewTemplates(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 1
    .param p1, "loadingView"    # Landroid/widget/RemoteViews;
    .param p2, "firstView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 442
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;

    .line 443
    if-eqz p2, :cond_0

    .line 444
    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    .line 445
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    .line 447
    :cond_0
    return-void
.end method
