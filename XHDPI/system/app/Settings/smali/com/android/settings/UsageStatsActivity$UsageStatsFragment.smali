.class public Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;
.super Landroid/app/Fragment;
.source "UsageStatsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsageStatsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsageStatsFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;,
        Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageDataTimeComparator;,
        Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;
    }
.end annotation


# instance fields
.field private MSG_SCROLL_STOP:I

.field private final TIMER_HEIGHT:I

.field private final TIMER_WIDTH:I

.field private mAdapter:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;

.field private mCenter:I

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field mIsScroll:Z

.field private mIsTouchMove:Z

.field private mItemsHeightCache:[I

.field private mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mListTopItem:I

.field private mListView:Landroid/widget/ListView;

.field private mListViewHeight:I

.field private mMovePreY:F

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPreIsMove:Z

.field private mScreenWidth:I

.field private mTimerHalfHeight:I

.field private mTimerTop:I

.field private mTimerView:Lcom/android/settings/TimerView;

.field private mTimerXPos:I

.field private mTotalItemCount:I

.field private mUsageDataManager:Lcom/android/settings/UsageDataManager;

.field private mUsageStatsService:Lcom/android/internal/app/IUsageStats;

.field private mVisibleCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 65
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->TIMER_HEIGHT:I

    .line 66
    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->TIMER_WIDTH:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mMovePreY:F

    .line 71
    iput v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerTop:I

    .line 76
    new-instance v0, Lcom/android/settings/UsageDataManager;

    invoke-direct {v0}, Lcom/android/settings/UsageDataManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mUsageDataManager:Lcom/android/settings/UsageDataManager;

    .line 78
    iput-boolean v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mIsScroll:Z

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->MSG_SCROLL_STOP:I

    .line 82
    iput v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mCenter:I

    .line 87
    iput-boolean v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mPreIsMove:Z

    .line 384
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->MSG_SCROLL_STOP:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mIsTouchMove:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)Lcom/android/settings/TimerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerView:Lcom/android/settings/TimerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)Lcom/android/settings/UsageDataManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mUsageDataManager:Lcom/android/settings/UsageDataManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mCenter:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mListViewHeight:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mListViewHeight:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerHalfHeight:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method moveTimerView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 535
    iget v4, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTotalItemCount:I

    if-lez v4, :cond_3

    .line 536
    iget-object v4, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    .line 537
    .local v2, height:I
    iget v4, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerTop:I

    iget v5, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerHalfHeight:I

    add-int v1, v4, v5

    .line 538
    .local v1, dis:I
    const/4 v3, 0x0

    .line 539
    .local v3, item:I
    iget v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mListTopItem:I

    :goto_0
    iget v4, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mListTopItem:I

    iget v5, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mVisibleCount:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_1

    .line 540
    iget-object v4, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mItemsHeightCache:[I

    aget v4, v4, v3

    if-nez v4, :cond_0

    .line 541
    iget-object v4, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mItemsHeightCache:[I

    iget-object v5, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mListView:Landroid/widget/ListView;

    iget v6, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mListTopItem:I

    sub-int v6, v3, v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    aput v5, v4, v3

    .line 543
    :cond_0
    iget-object v4, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mItemsHeightCache:[I

    aget v4, v4, v3

    add-int/2addr v2, v4

    .line 545
    if-le v2, v1, :cond_4

    .line 549
    :cond_1
    iget v4, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTotalItemCount:I

    if-ge v3, v4, :cond_3

    .line 550
    iget-object v4, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageMergedData;

    .line 551
    .local v0, data:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageMergedData;
    iget-object v5, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerView:Lcom/android/settings/TimerView;

    iget-object v4, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageMergedData;->mDataItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageDataItem;

    iget-object v4, v4, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageDataItem;->mTime:Ljava/lang/Long;

    invoke-virtual {v5, v4}, Lcom/android/settings/TimerView;->setTimer(Ljava/lang/Long;)V

    .line 552
    iget v4, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerTop:I

    if-gez v4, :cond_2

    .line 553
    iput v7, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerTop:I

    .line 554
    :cond_2
    iget-object v4, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerXPos:I

    iget v6, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerTop:I

    invoke-virtual {v4, v5, v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 555
    iget-object v4, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerView:Lcom/android/settings/TimerView;

    iget-object v5, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v4, v5}, Lcom/android/settings/TimerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 558
    .end local v0           #data:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageMergedData;
    .end local v1           #dis:I
    .end local v2           #height:I
    .end local v3           #item:I
    :cond_3
    return-void

    .line 539
    .restart local v1       #dis:I
    .restart local v2       #height:I
    .restart local v3       #item:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const-string v0, "usagestats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IUsageStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IUsageStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mUsageStatsService:Lcom/android/internal/app/IUsageStats;

    .line 98
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mUsageStatsService:Lcom/android/internal/app/IUsageStats;

    if-nez v0, :cond_0

    .line 99
    const-string v0, "UsageStatsActivity"

    const-string v1, "Failed to retrieve usagestats service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 108
    const v3, 0x7f0400bb

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 110
    .local v1, view:Landroid/view/View;
    iput-object p1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mPm:Landroid/content/pm/PackageManager;

    .line 113
    const v3, 0x7f0901c8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mListView:Landroid/widget/ListView;

    .line 114
    const v3, 0x7f0901c9

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/TimerView;

    iput-object v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerView:Lcom/android/settings/TimerView;

    .line 116
    new-instance v3, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;

    invoke-direct {v3, p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;-><init>(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)V

    iput-object v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mAdapter:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;

    .line 117
    iget-object v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mAdapter:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;

    #calls: Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->update()V
    invoke-static {v3}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->access$000(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;)V

    .line 118
    iget-object v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mAdapter:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    iget-object v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 120
    iget-object v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 122
    iget-object v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mAdapter:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;

    invoke-virtual {v3}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->getCount()I

    move-result v3

    iput v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTotalItemCount:I

    .line 123
    iget v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTotalItemCount:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mItemsHeightCache:[I

    .line 125
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 126
    .local v0, metric:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 127
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mScreenWidth:I

    .line 129
    iget-object v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerView:Lcom/android/settings/TimerView;

    invoke-virtual {v3}, Lcom/android/settings/TimerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 131
    const/high16 v3, 0x42b4

    invoke-virtual {p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v2, v3

    .line 132
    .local v2, width:I
    const/high16 v3, 0x4220

    invoke-virtual {p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerHalfHeight:I

    .line 133
    iget v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mScreenWidth:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerXPos:I

    .line 135
    new-instance v3, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$1;-><init>(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)V

    iput-object v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mHandler:Landroid/os/Handler;

    .line 145
    return-object v1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mPreIsMove:Z

    .line 435
    iput p2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mListTopItem:I

    .line 436
    iput p3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mVisibleCount:I

    .line 437
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 405
    packed-switch p2, :pswitch_data_0

    .line 427
    :goto_0
    return-void

    .line 409
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mIsScroll:Z

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->moveTimerView()V

    .line 411
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$2;-><init>(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 424
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mIsScroll:Z

    goto :goto_0

    .line 405
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 473
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    .line 475
    .local v0, curY:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    .line 476
    iput-boolean v9, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mPreIsMove:Z

    .line 477
    iput-boolean v7, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mIsTouchMove:Z

    .line 479
    iget v5, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTotalItemCount:I

    if-lez v5, :cond_0

    .line 480
    iget-object v5, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerView:Lcom/android/settings/TimerView;

    invoke-virtual {v5, v9}, Lcom/android/settings/TimerView;->setVisibility(I)V

    .line 481
    iput v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mMovePreY:F

    .line 482
    iget-object v5, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v6, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerXPos:I

    iget v7, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerTop:I

    invoke-virtual {v5, v6, v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 483
    iget-object v5, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerView:Lcom/android/settings/TimerView;

    iget-object v6, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v5, v6}, Lcom/android/settings/TimerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    invoke-virtual {p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->moveTimerView()V

    .line 531
    :cond_0
    :goto_0
    return v9

    .line 488
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 489
    iget v5, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mMovePreY:F

    sub-float v1, v5, v0

    .line 491
    .local v1, diff:F
    iget-boolean v5, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mPreIsMove:Z

    if-eqz v5, :cond_5

    .line 493
    iget v5, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerTop:I

    int-to-float v5, v5

    add-float/2addr v5, v1

    float-to-int v4, v5

    .line 494
    .local v4, xx:I
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-lez v5, :cond_4

    .line 496
    iget-object v5, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mListView:Landroid/widget/ListView;

    iget v6, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mVisibleCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 497
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 498
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    .line 499
    .local v2, lastTop:I
    if-le v4, v2, :cond_2

    .line 500
    move v4, v2

    .line 508
    .end local v2           #lastTop:I
    .end local v3           #view:Landroid/view/View;
    :cond_2
    :goto_1
    iget v5, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerTop:I

    if-eq v4, v5, :cond_3

    .line 509
    iput v4, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerTop:I

    .line 510
    invoke-virtual {p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->moveTimerView()V

    .line 515
    .end local v4           #xx:I
    :cond_3
    :goto_2
    iput v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mMovePreY:F

    .line 516
    iput-boolean v7, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mPreIsMove:Z

    goto :goto_0

    .line 504
    .restart local v4       #xx:I
    :cond_4
    if-gtz v4, :cond_2

    .line 505
    const/4 v4, 0x0

    goto :goto_1

    .line 512
    .end local v4           #xx:I
    :cond_5
    iget-boolean v5, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mIsScroll:Z

    if-eqz v5, :cond_3

    .line 513
    float-to-int v5, v1

    invoke-virtual {p0, v5}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->timerScroll(I)V

    goto :goto_2

    .line 518
    .end local v1           #diff:F
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v7, v5, :cond_0

    .line 519
    iput-boolean v9, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mIsTouchMove:Z

    .line 520
    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    new-instance v6, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$3;

    invoke-direct {v6, p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$3;-><init>(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)V

    const-wide/16 v7, 0x1f4

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method timerScroll(I)V
    .locals 4
    .parameter "diff"

    .prologue
    .line 440
    if-ltz p1, :cond_3

    .line 442
    iget v2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerTop:I

    iget v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mCenter:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerTop:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mCenter:I

    if-le v2, v3, :cond_0

    .line 443
    iget v2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mCenter:I

    iput v2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerTop:I

    .line 468
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->moveTimerView()V

    .line 469
    return-void

    .line 445
    :cond_0
    iget-object v2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mVisibleCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 446
    .local v1, view:Landroid/view/View;
    const/4 v0, 0x0

    .line 447
    .local v0, lastTop:I
    if-eqz v1, :cond_1

    .line 448
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 451
    :cond_1
    iget v2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerTop:I

    add-int/2addr v2, p1

    if-le v2, v0, :cond_2

    .line 452
    iput v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerTop:I

    goto :goto_0

    .line 454
    :cond_2
    iget v2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerTop:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerTop:I

    goto :goto_0

    .line 459
    .end local v0           #lastTop:I
    .end local v1           #view:Landroid/view/View;
    :cond_3
    iget v2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerTop:I

    iget v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mCenter:I

    if-lt v2, v3, :cond_4

    iget v2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerTop:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mCenter:I

    if-ge v2, v3, :cond_4

    .line 460
    iget v2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mCenter:I

    iput v2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerTop:I

    goto :goto_0

    .line 461
    :cond_4
    iget v2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerTop:I

    add-int/2addr v2, p1

    if-gez v2, :cond_5

    .line 462
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerTop:I

    goto :goto_0

    .line 464
    :cond_5
    iget v2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerTop:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerTop:I

    goto :goto_0
.end method
