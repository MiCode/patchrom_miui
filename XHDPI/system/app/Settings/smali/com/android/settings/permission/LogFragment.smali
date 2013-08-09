.class public Lcom/android/settings/permission/LogFragment;
.super Lcom/android/settings/permission/BasePermissionFragment;
.source "LogFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/permission/LogFragment$PermLogAdapter;,
        Lcom/android/settings/permission/LogFragment$QueryLogTask;,
        Lcom/android/settings/permission/LogFragment$EventLogInfo;
    }
.end annotation


# instance fields
.field private mEventLogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/permission/LogFragment$EventLogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mLogAdapter:Lcom/android/settings/permission/LogFragment$PermLogAdapter;

.field private mQueryLogTask:Lcom/android/settings/permission/LogFragment$QueryLogTask;

.field private mTitleDate:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/permission/BasePermissionFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/permission/LogFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/permission/LogFragment;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/permission/LogFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/permission/LogFragment;->mEventLogList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/permission/LogFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/settings/permission/LogFragment;->mEventLogList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/permission/LogFragment;)Lcom/android/settings/permission/LogFragment$PermLogAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/permission/LogFragment;->mLogAdapter:Lcom/android/settings/permission/LogFragment$PermLogAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/permission/LogFragment;Lcom/android/settings/permission/LogFragment$PermLogAdapter;)Lcom/android/settings/permission/LogFragment$PermLogAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/settings/permission/LogFragment;->mLogAdapter:Lcom/android/settings/permission/LogFragment$PermLogAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/permission/LogFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/permission/LogFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/permission/LogFragment;Lcom/android/settings/permission/LogFragment$QueryLogTask;)Lcom/android/settings/permission/LogFragment$QueryLogTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/settings/permission/LogFragment;->mQueryLogTask:Lcom/android/settings/permission/LogFragment$QueryLogTask;

    return-object p1
.end method


# virtual methods
.method public getFormatLogTime(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "date"
    .parameter "format"

    .prologue
    .line 72
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/permission/LogFragment;->setHasOptionsMenu(Z)V

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/permission/BasePermissionFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 101
    iget-object v0, p0, Lcom/android/settings/permission/LogFragment;->mEventLogList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/permission/LogFragment;->mEventLogList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 102
    const/4 v0, 0x1

    const v1, 0x7f0c0760

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 105
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/permission/BasePermissionFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 106
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 79
    const v1, 0x7f04006d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 110
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 111
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/permission/LogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 112
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0760

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 113
    const v1, 0x7f0c0761

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 114
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 115
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/permission/LogFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/permission/LogFragment$1;-><init>(Lcom/android/settings/permission/LogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 125
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    return v3
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 10
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const v9, 0x7f09000f

    const/4 v7, 0x0

    .line 273
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v0, p2, v6

    .line 274
    .local v0, index:I
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 275
    .local v5, topView:Landroid/view/View;
    if-nez v5, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    if-nez p2, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-ltz v6, :cond_3

    .line 280
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 281
    .local v3, titleView:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/permission/LogFragment;->mTitleDate:Ljava/lang/String;

    .line 282
    iget-object v6, p0, Lcom/android/settings/permission/LogFragment;->mTitleView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/permission/LogFragment;->mTitleDate:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v8, p0, Lcom/android/settings/permission/LogFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-gez v6, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v6, 0x8

    goto :goto_1

    .line 287
    .end local v3           #titleView:Landroid/widget/TextView;
    :cond_3
    iget-object v6, p0, Lcom/android/settings/permission/LogFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/permission/LogFragment$EventLogInfo;

    .line 289
    .local v1, itemInfo:Lcom/android/settings/permission/LogFragment$EventLogInfo;
    iget v6, v1, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mType:I

    if-eqz v6, :cond_4

    .line 290
    iget-object v6, p0, Lcom/android/settings/permission/LogFragment;->mEventLogList:Ljava/util/ArrayList;

    iget v8, v1, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mDatePos:I

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/permission/LogFragment$EventLogInfo;

    iget-object v6, v6, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mTimeStamp:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/permission/LogFragment;->mTitleDate:Ljava/lang/String;

    .line 291
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 292
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #itemInfo:Lcom/android/settings/permission/LogFragment$EventLogInfo;
    check-cast v1, Lcom/android/settings/permission/LogFragment$EventLogInfo;

    .line 293
    .restart local v1       #itemInfo:Lcom/android/settings/permission/LogFragment$EventLogInfo;
    iget v6, v1, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mType:I

    if-nez v6, :cond_5

    .line 294
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int v4, v6, v8

    .line 295
    .local v4, topMargin:I
    if-gez v4, :cond_5

    .line 296
    iget-object v6, p0, Lcom/android/settings/permission/LogFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 297
    .local v2, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 298
    iget-object v6, p0, Lcom/android/settings/permission/LogFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 301
    .restart local v3       #titleView:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/permission/LogFragment;->mTitleDate:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 302
    iget-object v6, p0, Lcom/android/settings/permission/LogFragment;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/permission/LogFragment;->mTitleDate:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 308
    .end local v2           #layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    .end local v3           #titleView:Landroid/widget/TextView;
    .end local v4           #topMargin:I
    :cond_4
    iget-object v6, v1, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mTimeStamp:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/permission/LogFragment;->mTitleDate:Ljava/lang/String;

    .line 311
    :cond_5
    iget-object v6, p0, Lcom/android/settings/permission/LogFragment;->mTitleDate:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/permission/LogFragment;->mTitleDate:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/permission/LogFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 312
    iget-object v6, p0, Lcom/android/settings/permission/LogFragment;->mTitleView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/permission/LogFragment;->mTitleDate:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    :cond_6
    iget-object v6, p0, Lcom/android/settings/permission/LogFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 315
    .restart local v2       #layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eqz v6, :cond_0

    .line 316
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 317
    iget-object v6, p0, Lcom/android/settings/permission/LogFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 323
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Lcom/android/settings/permission/BasePermissionFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 86
    const v0, 0x7f09000f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/permission/LogFragment;->mTitleView:Landroid/widget/TextView;

    .line 87
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/permission/LogFragment;->mListView:Landroid/widget/ListView;

    .line 88
    iget-object v0, p0, Lcom/android/settings/permission/LogFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/permission/LogFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 90
    return-void
.end method

.method public updateUI()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/permission/LogFragment;->mQueryLogTask:Lcom/android/settings/permission/LogFragment$QueryLogTask;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/android/settings/permission/LogFragment$QueryLogTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/permission/LogFragment$QueryLogTask;-><init>(Lcom/android/settings/permission/LogFragment;Lcom/android/settings/permission/LogFragment$1;)V

    iput-object v0, p0, Lcom/android/settings/permission/LogFragment;->mQueryLogTask:Lcom/android/settings/permission/LogFragment$QueryLogTask;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/settings/permission/LogFragment;->mQueryLogTask:Lcom/android/settings/permission/LogFragment$QueryLogTask;

    invoke-virtual {v0}, Lcom/android/settings/permission/LogFragment$QueryLogTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/permission/LogFragment;->mQueryLogTask:Lcom/android/settings/permission/LogFragment$QueryLogTask;

    invoke-virtual {v0}, Lcom/android/settings/permission/LogFragment$QueryLogTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 67
    iget-object v0, p0, Lcom/android/settings/permission/LogFragment;->mQueryLogTask:Lcom/android/settings/permission/LogFragment$QueryLogTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/permission/LogFragment$QueryLogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 69
    :cond_1
    return-void
.end method
