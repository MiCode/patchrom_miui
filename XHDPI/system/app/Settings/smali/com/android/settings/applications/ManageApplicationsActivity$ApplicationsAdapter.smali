.class public Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageApplicationsActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/Filterable;
.implements Lcom/android/settings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplicationsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApplicationsAdapter"
.end annotation


# instance fields
.field private final mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field mCurFilterPrefix:Ljava/lang/CharSequence;

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/widget/Filter;

.field private final mFilterMode:I

.field private mLastSortMode:I

.field private mResumed:Z

.field private final mSession:Lcom/android/settings/applications/ApplicationsState$Session;

.field private final mState:Lcom/android/settings/applications/ApplicationsState;

.field private final mTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

.field private mWhichSize:I


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/ApplicationsState;Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;I)V
    .locals 1
    .parameter "state"
    .parameter "tab"
    .parameter "filterMode"

    .prologue
    .line 495
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    .line 469
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mLastSortMode:I

    .line 470
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mWhichSize:I

    .line 473
    new-instance v0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter$1;-><init>(Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    .line 496
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mState:Lcom/android/settings/applications/ApplicationsState;

    .line 497
    invoke-virtual {p1, p0}, Lcom/android/settings/applications/ApplicationsState;->newSession(Lcom/android/settings/applications/ApplicationsState$Callbacks;)Lcom/android/settings/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    .line 498
    iput-object p2, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    .line 499
    iget-object v0, p2, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsActivity;

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 500
    iput p3, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mFilterMode:I

    .line 501
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .parameter "prefix"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 596
    .local p2, origEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move-object v2, p2

    .line 611
    :cond_1
    return-object v2

    .line 599
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 601
    .local v4, prefixStr:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 602
    .local v5, spacePrefixStr:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v2, newEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 604
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 605
    .local v0, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->getNormalizedLabel()Ljava/lang/String;

    move-result-object v3

    .line 606
    .local v3, nlabel:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 608
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 1
    .parameter "position"

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 694
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    iget-object v4, v4, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v4, p2}, Lcom/android/settings/applications/AppViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/applications/AppViewHolder;

    move-result-object v1

    .line 696
    .local v1, holder:Lcom/android/settings/applications/AppViewHolder;
    iget-object p2, v1, Lcom/android/settings/applications/AppViewHolder;->rootView:Landroid/view/View;

    .line 699
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 700
    .local v0, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    monitor-enter v0

    .line 701
    :try_start_0
    iput-object v0, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 702
    iget-object v4, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 703
    iget-object v4, v1, Lcom/android/settings/applications/AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    iget-object v5, v1, Lcom/android/settings/applications/AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v4, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_3

    const v4, 0x6070037

    :goto_0
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 711
    :cond_0
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v4, v0}, Lcom/android/settings/applications/ApplicationsState;->ensureIcon(Lcom/android/settings/applications/ApplicationsState$AppEntry;)V

    .line 712
    iget-object v4, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 713
    iget-object v4, v1, Lcom/android/settings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 715
    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    iget-object v4, v4, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v5, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {v1, v4, v5}, Lcom/android/settings/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    .line 717
    iget-object v4, v1, Lcom/android/settings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_4

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 723
    iget v3, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mFilterMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 724
    iget-object v3, v1, Lcom/android/settings/applications/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 725
    iget-object v3, v1, Lcom/android/settings/applications/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v4, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 730
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 732
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    return-object p2

    .line 704
    :cond_3
    const v4, 0x6070045

    goto :goto_0

    :cond_4
    move v3, v2

    .line 717
    goto :goto_1

    .line 728
    :cond_5
    :try_start_1
    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2

    .line 730
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onAllSizesComputed()V
    .locals 2

    .prologue
    .line 669
    iget v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mLastSortMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 670
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->rebuild(Z)V

    .line 672
    :cond_0
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 744
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 643
    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    .prologue
    .line 638
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->rebuild(Z)V

    .line 639
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 647
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 648
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppViewHolder;

    .line 649
    .local v0, holder:Lcom/android/settings/applications/AppViewHolder;
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 650
    iget-object v3, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    monitor-enter v3

    .line 651
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    iget-object v2, v2, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v4, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {v0, v2, v4}, Lcom/android/settings/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    .line 652
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    iget-object v3, v3, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsActivity;

    #getter for: Lcom/android/settings/applications/ManageApplicationsActivity;->mCurrentPkgName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/applications/ManageApplicationsActivity;->access$400(Lcom/android/settings/applications/ManageApplicationsActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mLastSortMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 660
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->rebuild(Z)V

    .line 665
    .end local v0           #holder:Lcom/android/settings/applications/AppViewHolder;
    :cond_0
    return-void

    .line 652
    .restart local v0       #holder:Lcom/android/settings/applications/AppViewHolder;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 647
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 624
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    #getter for: Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->access$300(Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    #getter for: Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->access$300(Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    #getter for: Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->access$200(Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    #getter for: Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->access$300(Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 631
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 632
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 633
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 634
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 1
    .parameter "running"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mOwner:Lcom/android/settings/applications/ManageApplicationsActivity;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/ManageApplicationsActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 619
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mResumed:Z

    .line 517
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->pause()V

    .line 519
    :cond_0
    return-void
.end method

.method public rebuild(I)V
    .locals 1
    .parameter "sort"

    .prologue
    .line 522
    iget v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mLastSortMode:I

    if-ne p1, v0, :cond_0

    .line 527
    :goto_0
    return-void

    .line 525
    :cond_0
    iput p1, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mLastSortMode:I

    .line 526
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_0
.end method

.method public rebuild(Z)V
    .locals 7
    .parameter "eraseold"

    .prologue
    const/4 v6, 0x0

    .line 532
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    .line 533
    .local v1, emulated:Z
    if-eqz v1, :cond_1

    .line 534
    iput v6, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mWhichSize:I

    .line 538
    :goto_0
    iget v4, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mFilterMode:I

    packed-switch v4, :pswitch_data_0

    .line 549
    const/4 v3, 0x0

    .line 552
    .local v3, filterObj:Lcom/android/settings/applications/ApplicationsState$AppFilter;
    :cond_0
    :goto_1
    iget v4, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mLastSortMode:I

    packed-switch v4, :pswitch_data_1

    .line 567
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 570
    .local v0, comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    :goto_2
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v4, v3, v0}, Lcom/android/settings/applications/ApplicationsState$Session;->rebuild(Lcom/android/settings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 572
    .local v2, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    if-nez v2, :cond_2

    if-nez p1, :cond_2

    .line 591
    :goto_3
    return-void

    .line 536
    .end local v0           #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    .end local v2           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    .end local v3           #filterObj:Lcom/android/settings/applications/ApplicationsState$AppFilter;
    :cond_1
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mWhichSize:I

    goto :goto_0

    .line 540
    :pswitch_0
    sget-object v3, Lcom/android/settings/applications/ApplicationsState;->THIRD_PARTY_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 541
    .restart local v3       #filterObj:Lcom/android/settings/applications/ApplicationsState$AppFilter;
    goto :goto_1

    .line 543
    .end local v3           #filterObj:Lcom/android/settings/applications/ApplicationsState$AppFilter;
    :pswitch_1
    sget-object v3, Lcom/android/settings/applications/ApplicationsState;->ON_SD_CARD_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 544
    .restart local v3       #filterObj:Lcom/android/settings/applications/ApplicationsState$AppFilter;
    if-nez v1, :cond_0

    .line 545
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mWhichSize:I

    goto :goto_1

    .line 554
    :pswitch_2
    iget v4, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mWhichSize:I

    packed-switch v4, :pswitch_data_2

    .line 562
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 563
    .restart local v0       #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 556
    .end local v0           #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    :pswitch_3
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 557
    .restart local v0       #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 559
    .end local v0           #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    :pswitch_4
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 560
    .restart local v0       #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 576
    .restart local v2       #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    :cond_2
    iput-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 577
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 578
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 582
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 584
    if-nez v2, :cond_4

    .line 585
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    #getter for: Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->access$200(Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;)Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 586
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    #getter for: Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->access$300(Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 580
    :cond_3
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    goto :goto_4

    .line 588
    :cond_4
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    #getter for: Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->access$200(Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 589
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    #getter for: Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->access$300(Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 538
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 552
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_2
    .end packed-switch

    .line 554
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public resume(I)V
    .locals 2
    .parameter "sort"

    .prologue
    const/4 v1, 0x1

    .line 504
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_0

    .line 505
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mResumed:Z

    .line 506
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->resume()V

    .line 507
    iput p1, p0, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->mLastSortMode:I

    .line 508
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->rebuild(Z)V

    .line 512
    :goto_0
    return-void

    .line 510
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->rebuild(I)V

    goto :goto_0
.end method
