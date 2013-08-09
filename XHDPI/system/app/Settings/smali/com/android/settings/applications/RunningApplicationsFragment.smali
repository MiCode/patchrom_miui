.class public Lcom/android/settings/applications/RunningApplicationsFragment;
.super Landroid/app/Fragment;
.source "RunningApplicationsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;
    }
.end annotation


# instance fields
.field SECONDARY_SERVER_MEM:J

.field final mActiveItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/settings/applications/RunningProcessesView$ActiveItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;

.field private mAm:Landroid/app/ActivityManager;

.field private mBuilder:Ljava/lang/StringBuilder;

.field private mContext:Landroid/content/Context;

.field mCurSelected:Lcom/android/settings/applications/RunningState$BaseItem;

.field mDataAvail:Ljava/lang/Runnable;

.field mLastAvailMemory:J

.field mLastBackgroundProcessMemory:J

.field mLastForegroundProcessMemory:J

.field mLastNumBackgroundProcesses:I

.field mLastNumForegroundProcesses:I

.field mLastNumServiceProcesses:I

.field mLastServiceProcessMemory:J

.field private mListView:Landroid/widget/ListView;

.field mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

.field private mRootView:Landroid/view/View;

.field private mShowBackgroundProcess:Z

.field private mState:Lcom/android/settings/applications/RunningState;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const-wide/16 v2, -0x1

    .line 25
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mActiveItems:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mBuilder:Ljava/lang/StringBuilder;

    .line 41
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    .line 43
    iput v4, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastNumBackgroundProcesses:I

    .line 44
    iput v4, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastNumForegroundProcesses:I

    .line 45
    iput v4, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastNumServiceProcesses:I

    .line 46
    iput-wide v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastBackgroundProcessMemory:J

    .line 47
    iput-wide v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastForegroundProcessMemory:J

    .line 48
    iput-wide v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastServiceProcessMemory:J

    .line 49
    iput-wide v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastAvailMemory:J

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/RunningApplicationsFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/RunningApplicationsFragment;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private startServiceDetailsActivity(Lcom/android/settings/applications/RunningState$MergedItem;)V
    .locals 3
    .parameter "mi"

    .prologue
    .line 228
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 229
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.applications.RunningServiceDetailsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v1, "uid"

    iget-object v2, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v2, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    const-string v1, "process"

    iget-object v2, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v1, "background"

    iget-object v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mAdapter:Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;

    iget-boolean v2, v2, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mShowBackground:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningApplicationsFragment;->startActivity(Landroid/content/Intent;)V

    .line 234
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "filter_app_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mShowBackgroundProcess:Z

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mContext:Landroid/content/Context;

    .line 59
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 91
    iget-object v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mRootView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mRootView:Landroid/view/View;

    .line 112
    :goto_0
    return-object v2

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mAm:Landroid/app/ActivityManager;

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mState:Lcom/android/settings/applications/RunningState;

    .line 97
    const v2, 0x7f04005b

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mRootView:Landroid/view/View;

    .line 98
    iget-object v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mRootView:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mListView:Landroid/widget/ListView;

    .line 99
    iget-object v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mRootView:Landroid/view/View;

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 100
    .local v0, emptyView:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 101
    iget-object v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    iget-object v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 105
    new-instance v2, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;

    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mState:Lcom/android/settings/applications/RunningState;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;-><init>(Lcom/android/settings/applications/RunningApplicationsFragment;Lcom/android/settings/applications/RunningState;)V

    iput-object v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mAdapter:Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;

    .line 106
    iget-object v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mAdapter:Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    iget-object v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mAdapter:Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;

    iget-boolean v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mShowBackgroundProcess:Z

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->setShowBackground(Z)V

    .line 109
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 110
    .local v1, memInfo:Landroid/app/ActivityManager$MemoryInfo;
    iget-object v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v2, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 111
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->SECONDARY_SERVER_MEM:J

    .line 112
    iget-object v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mRootView:Landroid/view/View;

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 219
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    .line 220
    .local v0, l:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 221
    .local v1, mi:Lcom/android/settings/applications/RunningState$MergedItem;
    iput-object v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mCurSelected:Lcom/android/settings/applications/RunningState$BaseItem;

    .line 222
    invoke-direct {p0, v1}, Lcom/android/settings/applications/RunningApplicationsFragment;->startServiceDetailsActivity(Lcom/android/settings/applications/RunningState$MergedItem;)V

    .line 223
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 79
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->pause()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mDataAvail:Ljava/lang/Runnable;

    .line 81
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 251
    packed-switch p1, :pswitch_data_0

    .line 264
    :goto_0
    return-void

    .line 253
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment;->updateTimes()V

    goto :goto_0

    .line 256
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningApplicationsFragment;->refreshUi(Z)V

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment;->updateTimes()V

    goto :goto_0

    .line 260
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningApplicationsFragment;->refreshUi(Z)V

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment;->updateTimes()V

    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 64
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mShowBackgroundProcess:Z

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/RunningState;->resume(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V

    .line 66
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningApplicationsFragment;->refreshUi(Z)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mAdapter:Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->notifyDataSetChanged()V

    .line 74
    return-void
.end method

.method refreshUi(Z)V
    .locals 9
    .parameter "dataChanged"

    .prologue
    .line 267
    if-eqz p1, :cond_0

    .line 268
    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;

    move-object v0, v3

    check-cast v0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;

    .line 269
    .local v0, adapter:Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->refreshItems()V

    .line 270
    invoke-virtual {v0}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->notifyDataSetChanged()V

    .line 273
    .end local v0           #adapter:Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mDataAvail:Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    .line 274
    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mDataAvail:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 275
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mDataAvail:Ljava/lang/Runnable;

    .line 280
    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v3}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 281
    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v3}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v5}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v5

    add-long/2addr v3, v5

    iget-wide v5, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->SECONDARY_SERVER_MEM:J

    sub-long v1, v3, v5

    .line 283
    .local v1, availMem:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    .line 284
    const-wide/16 v1, 0x0

    .line 287
    :cond_2
    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v4, v3, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 288
    :try_start_0
    iget v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastNumBackgroundProcesses:I

    iget-object v5, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mState:Lcom/android/settings/applications/RunningState;

    iget v5, v5, Lcom/android/settings/applications/RunningState;->mNumBackgroundProcesses:I

    if-ne v3, v5, :cond_3

    iget-wide v5, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastBackgroundProcessMemory:J

    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v7, v3, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_3

    iget-wide v5, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastAvailMemory:J

    cmp-long v3, v5, v1

    if-eqz v3, :cond_4

    .line 291
    :cond_3
    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mState:Lcom/android/settings/applications/RunningState;

    iget v3, v3, Lcom/android/settings/applications/RunningState;->mNumBackgroundProcesses:I

    iput v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastNumBackgroundProcesses:I

    .line 292
    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v5, v3, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    iput-wide v5, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastBackgroundProcessMemory:J

    .line 293
    iput-wide v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastAvailMemory:J

    .line 295
    :cond_4
    iget v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastNumForegroundProcesses:I

    iget-object v5, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mState:Lcom/android/settings/applications/RunningState;

    iget v5, v5, Lcom/android/settings/applications/RunningState;->mNumForegroundProcesses:I

    if-ne v3, v5, :cond_5

    iget-wide v5, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastForegroundProcessMemory:J

    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v7, v3, Lcom/android/settings/applications/RunningState;->mForegroundProcessMemory:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_5

    iget v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastNumServiceProcesses:I

    iget-object v5, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mState:Lcom/android/settings/applications/RunningState;

    iget v5, v5, Lcom/android/settings/applications/RunningState;->mNumServiceProcesses:I

    if-ne v3, v5, :cond_5

    iget-wide v5, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastServiceProcessMemory:J

    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v7, v3, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    cmp-long v3, v5, v7

    if-eqz v3, :cond_6

    .line 299
    :cond_5
    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mState:Lcom/android/settings/applications/RunningState;

    iget v3, v3, Lcom/android/settings/applications/RunningState;->mNumForegroundProcesses:I

    iput v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastNumForegroundProcesses:I

    .line 300
    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v5, v3, Lcom/android/settings/applications/RunningState;->mForegroundProcessMemory:J

    iput-wide v5, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastForegroundProcessMemory:J

    .line 301
    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mState:Lcom/android/settings/applications/RunningState;

    iget v3, v3, Lcom/android/settings/applications/RunningState;->mNumServiceProcesses:I

    iput v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastNumServiceProcesses:I

    .line 302
    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v5, v3, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    iput-wide v5, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastServiceProcessMemory:J

    .line 304
    :cond_6
    monitor-exit v4

    .line 305
    return-void

    .line 304
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public update()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mAdapter:Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mAdapter:Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;

    iget-boolean v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mShowBackgroundProcess:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->setShowBackground(Z)V

    .line 87
    :cond_0
    return-void
.end method

.method updateTimes()V
    .locals 4

    .prologue
    .line 237
    iget-object v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 238
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/applications/RunningProcessesView$ActiveItem;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    .line 240
    .local v0, ai:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    iget-object v2, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 242
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 247
    .end local v0           #ai:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    :cond_1
    return-void
.end method
