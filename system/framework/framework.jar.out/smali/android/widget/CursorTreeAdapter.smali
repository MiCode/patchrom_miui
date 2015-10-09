.class public abstract Landroid/widget/CursorTreeAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "CursorTreeAdapter.java"

# interfaces
.implements Landroid/widget/CursorFilter$CursorFilterClient;
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CursorTreeAdapter$1;,
        Landroid/widget/CursorTreeAdapter$MyCursorHelper;
    }
.end annotation


# instance fields
.field private mAutoRequery:Z

.field mChildrenCursorHelpers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/CursorTreeAdapter$MyCursorHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mCursorFilter:Landroid/widget/CursorFilter;

.field mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

.field mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorTreeAdapter;->init(Landroid/database/Cursor;Landroid/content/Context;Z)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/content/Context;Z)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "autoRequery"    # Z

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorTreeAdapter;->init(Landroid/database/Cursor;Landroid/content/Context;Z)V

    .line 78
    return-void
.end method

.method static synthetic access$100(Landroid/widget/CursorTreeAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CursorTreeAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/CursorTreeAdapter;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/CursorTreeAdapter;

    .prologue
    .line 38
    iget-boolean v0, p0, Landroid/widget/CursorTreeAdapter;->mAutoRequery:Z

    return v0
.end method

.method private init(Landroid/database/Cursor;Landroid/content/Context;Z)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "autoRequery"    # Z

    .prologue
    .line 81
    iput-object p2, p0, Landroid/widget/CursorTreeAdapter;->mContext:Landroid/content/Context;

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/CursorTreeAdapter;->mHandler:Landroid/os/Handler;

    .line 83
    iput-boolean p3, p0, Landroid/widget/CursorTreeAdapter;->mAutoRequery:Z

    .line 85
    new-instance v0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-direct {v0, p0, p1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;-><init>(Landroid/widget/CursorTreeAdapter;Landroid/database/Cursor;)V

    iput-object v0, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/CursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    .line 87
    return-void
.end method

.method private declared-synchronized releaseCursorHelpers()V
    .locals 2

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/widget/CursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "pos":I
    :goto_0
    if-ltz v0, :cond_0

    .line 290
    iget-object v1, p0, Landroid/widget/CursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->deactivate()V

    .line 289
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 293
    :cond_0
    iget-object v1, p0, Landroid/widget/CursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    monitor-exit p0

    return-void

    .line 289
    .end local v0    # "pos":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method protected abstract bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
.end method

.method protected abstract bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 383
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->changeCursor(Landroid/database/Cursor;Z)V

    .line 384
    return-void
.end method

.method public bridge synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/CursorTreeAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 344
    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method declared-synchronized deactivateChildrenCursorHelper(I)V
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 335
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/widget/CursorTreeAdapter;->getChildrenCursorHelper(IZ)Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    move-result-object v0

    .line 336
    .local v0, "cursorHelper":Landroid/widget/CursorTreeAdapter$MyCursorHelper;
    iget-object v1, p0, Landroid/widget/CursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 337
    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->deactivate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    monitor-exit p0

    return-void

    .line 335
    .end local v0    # "cursorHelper":Landroid/widget/CursorTreeAdapter$MyCursorHelper;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getChild(II)Landroid/database/Cursor;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 169
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/CursorTreeAdapter;->getChildrenCursorHelper(IZ)Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->moveTo(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Landroid/widget/CursorTreeAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/CursorTreeAdapter;->getChildrenCursorHelper(IZ)Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->getId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 238
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Landroid/widget/CursorTreeAdapter;->getChildrenCursorHelper(IZ)Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    move-result-object v1

    .line 240
    .local v1, "cursorHelper":Landroid/widget/CursorTreeAdapter$MyCursorHelper;
    invoke-virtual {v1, p2}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->moveTo(I)Landroid/database/Cursor;

    move-result-object v0

    .line 241
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 242
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "this should only be called when the cursor is valid"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 246
    :cond_0
    if-nez p4, :cond_1

    .line 247
    iget-object v3, p0, Landroid/widget/CursorTreeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v0, p3, p5}, Landroid/widget/CursorTreeAdapter;->newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 251
    .local v2, "v":Landroid/view/View;
    :goto_0
    iget-object v3, p0, Landroid/widget/CursorTreeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v3, v0, p3}, Landroid/widget/CursorTreeAdapter;->bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 252
    return-object v2

    .line 249
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    move-object v2, p4

    .restart local v2    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 177
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/widget/CursorTreeAdapter;->getChildrenCursorHelper(IZ)Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    move-result-object v0

    .line 178
    .local v0, "helper":Landroid/widget/CursorTreeAdapter$MyCursorHelper;
    iget-object v1, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->getCount()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
.end method

.method declared-synchronized getChildrenCursorHelper(IZ)Landroid/widget/CursorTreeAdapter$MyCursorHelper;
    .locals 3
    .param p1, "groupPosition"    # I
    .param p2, "requestCursor"    # Z

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/widget/CursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    .line 102
    .local v1, "cursorHelper":Landroid/widget/CursorTreeAdapter$MyCursorHelper;
    if-nez v1, :cond_1

    .line 103
    iget-object v2, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v2, p1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->moveTo(I)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 110
    :goto_0
    monitor-exit p0

    return-object v2

    .line 105
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v2}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/CursorTreeAdapter;->getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 106
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    .end local v1    # "cursorHelper":Landroid/widget/CursorTreeAdapter$MyCursorHelper;
    invoke-direct {v1, p0, v0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;-><init>(Landroid/widget/CursorTreeAdapter;Landroid/database/Cursor;)V

    .line 107
    .restart local v1    # "cursorHelper":Landroid/widget/CursorTreeAdapter$MyCursorHelper;
    iget-object v2, p0, Landroid/widget/CursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    move-object v2, v1

    .line 110
    goto :goto_0

    .line 100
    .end local v1    # "cursorHelper":Landroid/widget/CursorTreeAdapter$MyCursorHelper;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mCursorFilter:Landroid/widget/CursorFilter;

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Landroid/widget/CursorFilter;

    invoke-direct {v0, p0}, Landroid/widget/CursorFilter;-><init>(Landroid/widget/CursorFilter$CursorFilterClient;)V

    iput-object v0, p0, Landroid/widget/CursorTreeAdapter;->mCursorFilter:Landroid/widget/CursorFilter;

    .line 362
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mCursorFilter:Landroid/widget/CursorFilter;

    return-object v0
.end method

.method public getFilterQueryProvider()Landroid/widget/FilterQueryProvider;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    return-object v0
.end method

.method public getGroup(I)Landroid/database/Cursor;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 183
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v0, p1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->moveTo(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/CursorTreeAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->getCount()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 191
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v0, p1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->getId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 196
    iget-object v2, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v2, p1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->moveTo(I)Landroid/database/Cursor;

    move-result-object v0

    .line 197
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 198
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "this should only be called when the cursor is valid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    :cond_0
    if-nez p3, :cond_1

    .line 203
    iget-object v2, p0, Landroid/widget/CursorTreeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v0, p2, p4}, Landroid/widget/CursorTreeAdapter;->newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 207
    .local v1, "v":Landroid/view/View;
    :goto_0
    iget-object v2, p0, Landroid/widget/CursorTreeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v2, v0, p2}, Landroid/widget/CursorTreeAdapter;->bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 208
    return-object v1

    .line 205
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    move-object v1, p3

    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 281
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/CursorTreeAdapter;->notifyDataSetChanged(Z)V

    .line 299
    return-void
.end method

.method public notifyDataSetChanged(Z)V
    .locals 0
    .param p1, "releaseCursors"    # Z

    .prologue
    .line 310
    if-eqz p1, :cond_0

    .line 311
    invoke-direct {p0}, Landroid/widget/CursorTreeAdapter;->releaseCursorHelpers()V

    .line 314
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 315
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Landroid/widget/CursorTreeAdapter;->releaseCursorHelpers()V

    .line 320
    invoke-super {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetInvalidated()V

    .line 321
    return-void
.end method

.method public onGroupCollapsed(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    .prologue
    .line 325
    invoke-virtual {p0, p1}, Landroid/widget/CursorTreeAdapter;->deactivateChildrenCursorHelper(I)V

    .line 326
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 351
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 355
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public setChildrenCursor(ILandroid/database/Cursor;)V
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childrenCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-virtual {p0, p1, v1}, Landroid/widget/CursorTreeAdapter;->getChildrenCursorHelper(IZ)Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    move-result-object v0

    .line 164
    .local v0, "childrenCursorHelper":Landroid/widget/CursorTreeAdapter$MyCursorHelper;
    invoke-virtual {v0, p2, v1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->changeCursor(Landroid/database/Cursor;Z)V

    .line 165
    return-void
.end method

.method public setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V
    .locals 0
    .param p1, "filterQueryProvider"    # Landroid/widget/FilterQueryProvider;

    .prologue
    .line 376
    iput-object p1, p0, Landroid/widget/CursorTreeAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    .line 377
    return-void
.end method

.method public setGroupCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 140
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->changeCursor(Landroid/database/Cursor;Z)V

    .line 141
    return-void
.end method
