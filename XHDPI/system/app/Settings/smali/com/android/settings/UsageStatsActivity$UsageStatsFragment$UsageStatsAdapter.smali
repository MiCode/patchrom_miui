.class Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;
.super Landroid/widget/BaseAdapter;
.source "UsageStatsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsageStatsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;,
        Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageMergedData;,
        Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageDataItem;
    }
.end annotation


# instance fields
.field private mUsageDataTimeComparator:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageDataTimeComparator;

.field private mUsageItemsManager:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;

.field private mUsageMergedData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageMergedData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->this$0:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 163
    new-instance v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;

    invoke-direct {v0, p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;-><init>(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;)V

    iput-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->mUsageItemsManager:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->mUsageMergedData:Ljava/util/List;

    .line 165
    new-instance v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageDataTimeComparator;

    invoke-direct {v0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageDataTimeComparator;-><init>()V

    iput-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->mUsageDataTimeComparator:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageDataTimeComparator;

    .line 207
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->update()V

    return-void
.end method

.method private update()V
    .locals 9

    .prologue
    .line 168
    iget-object v5, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->this$0:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    #getter for: Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mUsageDataManager:Lcom/android/settings/UsageDataManager;
    invoke-static {v5}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->access$400(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)Lcom/android/settings/UsageDataManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/UsageDataManager;->getData()Ljava/util/ArrayList;

    move-result-object v4

    .line 169
    .local v4, usageStats:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/UsageDataManager$UsageData;>;"
    iget-object v5, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->mUsageDataTimeComparator:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageDataTimeComparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 172
    const-string v2, ""

    .line 173
    .local v2, pkg:Ljava/lang/String;
    const/4 v1, 0x0

    .line 174
    .local v1, item:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageMergedData;
    iget-object v5, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->mUsageMergedData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 175
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/UsageDataManager$UsageData;

    .line 176
    .local v3, ud:Lcom/android/settings/UsageDataManager$UsageData;
    iget-object v5, v3, Lcom/android/settings/UsageDataManager$UsageData;->mPkg:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 177
    if-eqz v1, :cond_0

    .line 178
    iget-object v5, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->mUsageMergedData:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_0
    new-instance v1, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageMergedData;

    .end local v1           #item:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageMergedData;
    invoke-direct {v1, p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageMergedData;-><init>(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;)V

    .line 181
    .restart local v1       #item:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageMergedData;
    iget-object v5, v3, Lcom/android/settings/UsageDataManager$UsageData;->mPkg:Ljava/lang/String;

    iput-object v5, v1, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageMergedData;->mPkg:Ljava/lang/String;

    .line 182
    iget-object v2, v3, Lcom/android/settings/UsageDataManager$UsageData;->mPkg:Ljava/lang/String;

    .line 185
    :cond_1
    iget-object v5, v1, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageMergedData;->mDataItems:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageDataItem;

    iget-object v7, v3, Lcom/android/settings/UsageDataManager$UsageData;->mKeyInf:Ljava/lang/String;

    iget-object v8, v3, Lcom/android/settings/UsageDataManager$UsageData;->mTime:Ljava/lang/Long;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageDataItem;-><init>(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    .end local v3           #ud:Lcom/android/settings/UsageDataManager$UsageData;
    :cond_2
    if-eqz v1, :cond_3

    .line 189
    iget-object v5, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->mUsageMergedData:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->notifyDataSetChanged()V

    .line 193
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->mUsageMergedData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->mUsageMergedData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 204
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->mUsageMergedData:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageMergedData;

    .line 277
    .local v13, pkgStats:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageMergedData;
    if-nez p2, :cond_2

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->this$0:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->access$500(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)Landroid/view/LayoutInflater;

    move-result-object v18

    const v19, 0x7f0400bc

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 282
    new-instance v8, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;

    invoke-direct {v8}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;-><init>()V

    .line 283
    .local v8, holder:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;
    const v18, 0x7f0901ca

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    iput-object v0, v8, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;->mPkgIcon:Landroid/widget/ImageView;

    .line 284
    const v18, 0x7f0901cc

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v0, v8, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;->mPkgName:Landroid/widget/TextView;

    .line 285
    const v18, 0x7f0901cb

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/settings/MomentView;

    move-object/from16 v0, v18

    iput-object v0, v8, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;->mMomentShow:Lcom/android/settings/MomentView;

    .line 287
    iget-object v0, v8, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;->mUsageInfLayout:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;

    move-object/from16 v19, v0

    const v18, 0x7f0901cd

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;->mUsageInfLayout:Landroid/widget/LinearLayout;

    .line 289
    new-instance v11, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;

    invoke-direct {v11}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;-><init>()V

    .line 290
    .local v11, item:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;
    const v18, 0x7f0901ce

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;->mUsageItemLayout:Landroid/widget/LinearLayout;

    .line 291
    const v18, 0x7f0901d0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;->mUsageTime:Landroid/widget/TextView;

    .line 292
    const v18, 0x7f0901cf

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;->mUsageInf:Landroid/widget/TextView;

    .line 294
    iget-object v0, v8, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;->mUsageInfLayout:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;->mItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v0, v13, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageMergedData;->mDataItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 298
    .local v15, size:I
    const/4 v10, 0x1

    .local v10, i:I
    :goto_0
    if-ge v10, v15, :cond_0

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->mUsageItemsManager:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;->allocItem()Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager$UIMItem;

    move-result-object v17

    .line 300
    .local v17, uimItem:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager$UIMItem;
    iget-object v0, v8, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;->mUsageInfLayout:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;->mSpliders:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager$UIMItem;->mLineView:Lcom/android/settings/LineView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v0, v8, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;->mUsageInfLayout:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;->mUsageInfLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager$UIMItem;->mLineView:Lcom/android/settings/LineView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 303
    iget-object v0, v8, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;->mUsageInfLayout:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;->mUsageInfLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager$UIMItem;->mItem:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;->mUsageItemLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 304
    iget-object v0, v8, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;->mUsageInfLayout:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;->mItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager$UIMItem;->mItem:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 307
    .end local v17           #uimItem:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager$UIMItem;
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->this$0:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->this$0:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mListViewHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->access$700(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->this$0:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    move-object/from16 v20, v0

    #getter for: Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerHalfHeight:I
    invoke-static/range {v20 .. v20}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->access$800(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)I

    move-result v20

    sub-int v19, v19, v20

    #setter for: Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mCenter:I
    invoke-static/range {v18 .. v19}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->access$602(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;I)I

    .line 339
    .end local v10           #i:I
    .end local v11           #item:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;
    .end local v15           #size:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->this$0:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    move-object/from16 v18, v0

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v19

    #setter for: Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mListViewHeight:I
    invoke-static/range {v18 .. v19}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->access$702(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;I)I

    .line 342
    if-eqz v13, :cond_4

    .line 343
    const/4 v3, 0x0

    .line 345
    .local v3, appInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->this$0:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->access$900(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)Landroid/content/pm/PackageManager;

    move-result-object v18

    iget-object v0, v13, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageMergedData;->mPkg:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->this$0:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 347
    .local v14, pm:Landroid/content/pm/PackageManager;
    iget-object v0, v8, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;->mPkgIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual {v14, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    .end local v14           #pm:Landroid/content/pm/PackageManager;
    :goto_1
    iget-object v0, v8, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;->mPkgName:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->this$0:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->access$900(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v0, v8, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;->mUsageInfLayout:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;->mItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 355
    .restart local v15       #size:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_2
    if-ge v10, v15, :cond_4

    .line 356
    iget-object v0, v8, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;->mUsageInfLayout:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;->mItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;->mUsageInf:Landroid/widget/TextView;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageMergedData;->mDataItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageDataItem;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageDataItem;->mKeyInf:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 359
    .local v4, calendar:Ljava/util/Calendar;
    iget-object v0, v13, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageMergedData;->mDataItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageDataItem;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageDataItem;->mTime:Ljava/lang/Long;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 360
    const/16 v18, 0xb

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 361
    .local v9, hour:I
    const/16 v18, 0xc

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 363
    .local v12, minuts:I
    const-string v18, "%d:%02d"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 364
    .local v16, str:Ljava/lang/String;
    iget-object v0, v8, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;->mUsageInfLayout:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;->mItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;->mUsageTime:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 311
    .end local v3           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v4           #calendar:Ljava/util/Calendar;
    .end local v8           #holder:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;
    .end local v9           #hour:I
    .end local v10           #i:I
    .end local v12           #minuts:I
    .end local v15           #size:I
    .end local v16           #str:Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;

    .line 313
    .restart local v8       #holder:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;
    iget-object v0, v8, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;->mUsageInfLayout:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;->mItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 314
    .local v5, count:I
    iget-object v0, v13, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageMergedData;->mDataItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 315
    .local v6, dataCount:I
    if-le v5, v6, :cond_3

    .line 317
    add-int/lit8 v10, v5, -0x1

    .restart local v10       #i:I
    :goto_3
    if-lt v10, v6, :cond_1

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->mUsageItemsManager:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;

    move-object/from16 v20, v0

    iget-object v0, v8, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;->mUsageInfLayout:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;->mItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;

    iget-object v0, v8, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;->mUsageInfLayout:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;->mSpliders:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v21, v10, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/settings/LineView;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;->freeItem(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;Lcom/android/settings/LineView;)V

    .line 320
    iget-object v0, v8, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;->mUsageInfLayout:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;->mUsageInfLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    iget-object v0, v8, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;->mUsageInfLayout:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;->mItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;->mUsageItemLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 321
    iget-object v0, v8, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;->mUsageInfLayout:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;->mUsageInfLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    iget-object v0, v8, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;->mUsageInfLayout:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;->mSpliders:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v20, v10, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 322
    iget-object v0, v8, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;->mUsageInfLayout:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;->mItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 323
    iget-object v0, v8, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;->mUsageInfLayout:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;->mSpliders:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 317
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_3

    .line 325
    .end local v10           #i:I
    :cond_3
    if-ge v5, v6, :cond_1

    .line 327
    add-int/lit8 v10, v6, -0x1

    .restart local v10       #i:I
    :goto_4
    if-lt v10, v5, :cond_1

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter;->mUsageItemsManager:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager;->allocItem()Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager$UIMItem;

    move-result-object v17

    .line 330
    .restart local v17       #uimItem:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager$UIMItem;
    iget-object v0, v8, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;->mUsageInfLayout:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;->mSpliders:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager$UIMItem;->mLineView:Lcom/android/settings/LineView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v0, v8, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;->mUsageInfLayout:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;->mUsageInfLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager$UIMItem;->mLineView:Lcom/android/settings/LineView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 333
    iget-object v0, v8, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;->mUsageInfLayout:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;->mUsageInfLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager$UIMItem;->mItem:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;->mUsageItemLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 334
    iget-object v0, v8, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder;->mUsageInfLayout:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout;->mItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager$UIMItem;->mItem:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageListViewHolder$UsageInfLayout$UsageItem;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    .line 348
    .end local v5           #count:I
    .end local v6           #dataCount:I
    .end local v10           #i:I
    .end local v17           #uimItem:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageStatsAdapter$UsageItemsManager$UIMItem;
    .restart local v3       #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v7

    .line 349
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 367
    .end local v3           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    return-object p2
.end method
