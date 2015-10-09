.class public Landroid/widget/RemoteViewsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RemoteViewsListAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRemoteViewsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field private mViewTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "viewTypeCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "remoteViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypes:Ljava/util/ArrayList;

    .line 37
    iput-object p1, p0, Landroid/widget/RemoteViewsListAdapter;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    .line 39
    iput p3, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypeCount:I

    .line 40
    invoke-direct {p0}, Landroid/widget/RemoteViewsListAdapter;->init()V

    .line 41
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 50
    iget-object v2, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 63
    :cond_0
    return-void

    .line 52
    :cond_1
    iget-object v2, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 53
    iget-object v2, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 54
    .local v1, "rv":Landroid/widget/RemoteViews;
    iget-object v2, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 55
    iget-object v2, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    .end local v1    # "rv":Landroid/widget/RemoteViews;
    :cond_3
    iget-object v2, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypeCount:I

    if-gt v2, v3, :cond_4

    iget v2, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypeCount:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 60
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Invalid view type count -- view type count must be >= 1and must be as large as the total number of distinct view types"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 81
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/widget/RemoteViewsListAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 106
    iget-object v1, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    .line 107
    .local v0, "layoutId":I
    iget-object v1, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 109
    .end local v0    # "layoutId":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/widget/RemoteViewsListAdapter;->getCount()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 87
    iget-object v2, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 88
    .local v0, "rv":Landroid/widget/RemoteViews;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/RemoteViews;->setIsWidgetCollectionChild(Z)V

    .line 90
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 92
    move-object v1, p2

    .line 93
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Landroid/widget/RemoteViewsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 99
    .end local v0    # "rv":Landroid/widget/RemoteViews;
    .end local v1    # "v":Landroid/view/View;
    :goto_0
    return-object v1

    .line 95
    .restart local v0    # "rv":Landroid/widget/RemoteViews;
    :cond_0
    iget-object v2, p0, Landroid/widget/RemoteViewsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0

    .line 99
    .end local v0    # "rv":Landroid/widget/RemoteViews;
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypeCount:I

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public setViewsList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "remoteViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    iput-object p1, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    .line 45
    invoke-direct {p0}, Landroid/widget/RemoteViewsListAdapter;->init()V

    .line 46
    invoke-virtual {p0}, Landroid/widget/RemoteViewsListAdapter;->notifyDataSetChanged()V

    .line 47
    return-void
.end method
