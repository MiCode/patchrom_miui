.class Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RunningApplicationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningApplicationsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceListAdapter"
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mShowBackground:Z

.field final mState:Lcom/android/settings/applications/RunningState;

.field final synthetic this$0:Lcom/android/settings/applications/RunningApplicationsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningApplicationsFragment;Lcom/android/settings/applications/RunningState;)V
    .locals 2
    .parameter
    .parameter "state"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->this$0:Lcom/android/settings/applications/RunningApplicationsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 122
    iput-object p2, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    .line 123
    #getter for: Lcom/android/settings/applications/RunningApplicationsFragment;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/settings/applications/RunningApplicationsFragment;->access$000(Lcom/android/settings/applications/RunningApplicationsFragment;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->refreshItems()V

    .line 125
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;I)V
    .locals 6
    .parameter "view"
    .parameter "position"

    .prologue
    .line 197
    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v4, v3, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 198
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p2, v3, :cond_0

    .line 202
    monitor-exit v4

    .line 209
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    .line 205
    .local v2, vh:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;
    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 206
    .local v1, item:Lcom/android/settings/applications/RunningState$MergedItem;
    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v5, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->this$0:Lcom/android/settings/applications/RunningApplicationsFragment;

    #getter for: Lcom/android/settings/applications/RunningApplicationsFragment;->mBuilder:Ljava/lang/StringBuilder;
    invoke-static {v5}, Lcom/android/settings/applications/RunningApplicationsFragment;->access$100(Lcom/android/settings/applications/RunningApplicationsFragment;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v3, v1, v5}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    .line 207
    .local v0, ai:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->this$0:Lcom/android/settings/applications/RunningApplicationsFragment;

    iget-object v3, v3, Lcom/android/settings/applications/RunningApplicationsFragment;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    monitor-exit v4

    goto :goto_0

    .end local v0           #ai:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    .end local v1           #item:Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v2           #vh:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 181
    if-nez p2, :cond_0

    .line 182
    invoke-virtual {p0, p3}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 186
    .local v0, v:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->bindView(Landroid/view/View;I)V

    .line 187
    return-object v0

    .line 184
    .end local v0           #v:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mIsProcess:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400a5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 192
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 193
    return-object v0
.end method

.method refreshItems()V
    .locals 2

    .prologue
    .line 139
    iget-boolean v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mShowBackground:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 142
    .local v0, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    if-eq v1, v0, :cond_0

    .line 143
    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    .line 148
    :cond_1
    return-void

    .line 139
    .end local v0           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method setShowBackground(Z)V
    .locals 1
    .parameter "showBackground"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mShowBackground:Z

    .line 129
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/RunningState;->setWatchingBackgroundItems(Z)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->refreshItems()V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->notifyDataSetChanged()V

    .line 132
    return-void
.end method
