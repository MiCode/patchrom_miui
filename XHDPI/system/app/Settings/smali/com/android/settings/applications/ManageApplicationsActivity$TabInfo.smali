.class public Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;
.super Ljava/lang/Object;
.source "ManageApplicationsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplicationsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabInfo"
.end annotation


# instance fields
.field public mApplications:Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;

.field public final mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

.field public final mClickListener:Lcom/android/settings/applications/ManageAppClickListener;

.field public final mComputingSizeStr:Ljava/lang/CharSequence;

.field public final mFilter:I

.field public mInflater:Landroid/view/LayoutInflater;

.field public final mInvalidSizeStr:Ljava/lang/CharSequence;

.field public final mLabel:Ljava/lang/CharSequence;

.field public final mListType:I

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field public final mOwner:Lcom/android/settings/applications/ManageApplicationsActivity;

.field public mRootView:Landroid/view/View;

.field final mRunningProcessesAvail:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/ManageApplicationsActivity;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/ManageAppClickListener;Landroid/os/Bundle;)V
    .locals 1
    .parameter "owner"
    .parameter "apps"
    .parameter "label"
    .parameter "listType"
    .parameter "clickListener"
    .parameter "savedInstanceState"

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    new-instance v0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo$1;-><init>(Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mRunningProcessesAvail:Ljava/lang/Runnable;

    .line 338
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsActivity;

    .line 339
    iput-object p2, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    .line 340
    iput-object p3, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mLabel:Ljava/lang/CharSequence;

    .line 341
    iput p4, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mListType:I

    .line 342
    packed-switch p4, :pswitch_data_0

    .line 345
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mFilter:I

    .line 347
    :goto_0
    iput-object p5, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mClickListener:Lcom/android/settings/applications/ManageAppClickListener;

    .line 348
    const v0, 0x7f0c041c

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/ManageApplicationsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 349
    const v0, 0x7f0c041b

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/ManageApplicationsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 350
    return-void

    .line 343
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mFilter:I

    goto :goto_0

    .line 344
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mFilter:I

    goto :goto_0

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$200(Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "contentParent"
    .parameter "contentChild"

    .prologue
    const/4 v4, 0x1

    .line 353
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 354
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mRootView:Landroid/view/View;

    .line 377
    :goto_0
    return-object v2

    .line 357
    :cond_0
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    .line 358
    const v2, 0x7f04005b

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mRootView:Landroid/view/View;

    .line 359
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mRootView:Landroid/view/View;

    const v3, 0x7f0900e0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mLoadingContainer:Landroid/view/View;

    .line 360
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mLoadingContainer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 363
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mRootView:Landroid/view/View;

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 364
    .local v0, emptyView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mRootView:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 365
    .local v1, lv:Landroid/widget/ListView;
    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 368
    :cond_1
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 369
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 370
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 371
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 372
    iput-object v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mListView:Landroid/widget/ListView;

    .line 373
    new-instance v2, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    iget v4, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mFilter:I

    invoke-direct {v2, v3, p0, v4}, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;-><init>(Lcom/android/settings/applications/ApplicationsState;Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;I)V

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;

    .line 374
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 375
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 377
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mRootView:Landroid/view/View;

    goto :goto_0
.end method

.method handleRunningProcessesAvail()V
    .locals 3

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mLoadingContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsActivity;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 409
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mLoadingContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 410
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 403
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mClickListener:Lcom/android/settings/applications/ManageAppClickListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/settings/applications/ManageAppClickListener;->onItemClick(Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 404
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->pause()V

    .line 399
    :cond_0
    return-void
.end method

.method public resume(I)V
    .locals 1
    .parameter "sortOrder"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->resume(I)V

    .line 393
    :cond_0
    return-void
.end method
