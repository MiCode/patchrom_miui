.class public Landroid/app/ListFragment;
.super Landroid/app/Fragment;
.source "ListFragment.java"


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field mEmptyText:Ljava/lang/CharSequence;

.field mEmptyView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field mList:Landroid/widget/ListView;

.field mListContainer:Landroid/view/View;

.field mListShown:Z

.field private final mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mProgressContainer:Landroid/view/View;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field mStandardEmptyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 149
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/app/ListFragment;->mHandler:Landroid/os/Handler;

    .line 151
    new-instance v0, Landroid/app/ListFragment$1;

    invoke-direct {v0, p0}, Landroid/app/ListFragment$1;-><init>(Landroid/app/ListFragment;)V

    iput-object v0, p0, Landroid/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 157
    new-instance v0, Landroid/app/ListFragment$2;

    invoke-direct {v0, p0}, Landroid/app/ListFragment$2;-><init>(Landroid/app/ListFragment;)V

    iput-object v0, p0, Landroid/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 174
    return-void
.end method

.method private ensureList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 381
    iget-object v3, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    if-eqz v3, :cond_0

    .line 433
    :goto_0
    return-void

    .line 384
    :cond_0
    invoke-virtual {p0}, Landroid/app/ListFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 385
    .local v2, "root":Landroid/view/View;
    if-nez v2, :cond_1

    .line 386
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Content view not yet created"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 388
    :cond_1
    instance-of v3, v2, Landroid/widget/ListView;

    if-eqz v3, :cond_4

    .line 389
    check-cast v2, Landroid/widget/ListView;

    .end local v2    # "root":Landroid/view/View;
    iput-object v2, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 419
    :cond_2
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/ListFragment;->mListShown:Z

    .line 420
    iget-object v3, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v4, p0, Landroid/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 421
    iget-object v3, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_9

    .line 422
    iget-object v0, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 423
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 424
    invoke-virtual {p0, v0}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 432
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    :goto_2
    iget-object v3, p0, Landroid/app/ListFragment;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 391
    .restart local v2    # "root":Landroid/view/View;
    :cond_4
    sget v3, Lcom/android/internal/R$id;->internalEmpty:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 393
    iget-object v3, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-nez v3, :cond_5

    .line 394
    sget v3, Landroid/R$id;->empty:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ListFragment;->mEmptyView:Landroid/view/View;

    .line 398
    :goto_3
    sget v3, Lcom/android/internal/R$id;->progressContainer:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    .line 399
    sget v3, Lcom/android/internal/R$id;->listContainer:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    .line 400
    sget v3, Landroid/R$id;->list:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 401
    .local v1, "rawListView":Landroid/view/View;
    instance-of v3, v1, Landroid/widget/ListView;

    if-nez v3, :cond_6

    .line 402
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 396
    .end local v1    # "rawListView":Landroid/view/View;
    :cond_5
    iget-object v3, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 406
    .restart local v1    # "rawListView":Landroid/view/View;
    :cond_6
    check-cast v1, Landroid/widget/ListView;

    .end local v1    # "rawListView":Landroid/view/View;
    iput-object v1, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 407
    iget-object v3, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    if-nez v3, :cond_7

    .line 408
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 412
    :cond_7
    iget-object v3, p0, Landroid/app/ListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_8

    .line 413
    iget-object v3, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v4, p0, Landroid/app/ListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1

    .line 414
    :cond_8
    iget-object v3, p0, Landroid/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 415
    iget-object v3, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v3, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v4, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 428
    .end local v2    # "root":Landroid/view/View;
    :cond_9
    iget-object v3, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 429
    invoke-direct {p0, v5, v5}, Landroid/app/ListFragment;->setListShown(ZZ)V

    goto :goto_2
.end method

.method private setListShown(ZZ)V
    .locals 5
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 338
    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    .line 339
    iget-object v0, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_0
    iget-boolean v0, p0, Landroid/app/ListFragment;->mListShown:Z

    if-ne v0, p1, :cond_1

    .line 371
    :goto_0
    return-void

    .line 345
    :cond_1
    iput-boolean p1, p0, Landroid/app/ListFragment;->mListShown:Z

    .line 346
    if-eqz p1, :cond_3

    .line 347
    if-eqz p2, :cond_2

    .line 348
    iget-object v0, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Landroid/R$anim;->fade_out:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 350
    iget-object v0, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Landroid/R$anim;->fade_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 356
    :goto_1
    iget-object v0, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 353
    :cond_2
    iget-object v0, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 354
    iget-object v0, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_1

    .line 359
    :cond_3
    if-eqz p2, :cond_4

    .line 360
    iget-object v0, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Landroid/R$anim;->fade_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 362
    iget-object v0, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Landroid/R$anim;->fade_out:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 368
    :goto_2
    iget-object v0, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 365
    :cond_4
    iget-object v0, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 366
    iget-object v0, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_2
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 280
    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    .line 281
    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 272
    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    .line 273
    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 264
    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    .line 265
    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 193
    sget v0, Lcom/android/internal/R$layout;->list_content:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 211
    iget-object v0, p0, Landroid/app/ListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 212
    iput-object v2, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ListFragment;->mListShown:Z

    .line 214
    iput-object v2, p0, Landroid/app/ListFragment;->mListContainer:Landroid/view/View;

    iput-object v2, p0, Landroid/app/ListFragment;->mProgressContainer:Landroid/view/View;

    iput-object v2, p0, Landroid/app/ListFragment;->mEmptyView:Landroid/view/View;

    .line 215
    iput-object v2, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 216
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 217
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 231
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 202
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 203
    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    .line 204
    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 290
    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    .line 291
    iget-object v0, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_0
    iget-object v0, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Landroid/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 296
    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 298
    :cond_1
    iput-object p1, p0, Landroid/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    .line 299
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 237
    iget-object v3, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    move v0, v1

    .line 238
    .local v0, "hadAdapter":Z
    :goto_0
    iput-object p1, p0, Landroid/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 239
    iget-object v3, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    if-eqz v3, :cond_1

    .line 240
    iget-object v3, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 241
    iget-boolean v3, p0, Landroid/app/ListFragment;->mListShown:Z

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    .line 244
    invoke-virtual {p0}, Landroid/app/ListFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-direct {p0, v1, v2}, Landroid/app/ListFragment;->setListShown(ZZ)V

    .line 247
    :cond_1
    return-void

    .end local v0    # "hadAdapter":Z
    :cond_2
    move v0, v2

    .line 237
    goto :goto_0
.end method

.method public setListShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 316
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/app/ListFragment;->setListShown(ZZ)V

    .line 317
    return-void
.end method

.method public setListShownNoAnimation(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 324
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/ListFragment;->setListShown(ZZ)V

    .line 325
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 256
    invoke-direct {p0}, Landroid/app/ListFragment;->ensureList()V

    .line 257
    iget-object v0, p0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 258
    return-void
.end method
