.class Landroid/widget/ExpandableListConnector;
.super Landroid/widget/BaseAdapter;
.source "ExpandableListConnector.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ExpandableListConnector$PositionMetadata;,
        Landroid/widget/ExpandableListConnector$GroupMetadata;,
        Landroid/widget/ExpandableListConnector$MyDataSetObserver;
    }
.end annotation


# instance fields
.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field private mExpGroupMetadataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

.field private mMaxExpGroupCount:I

.field private mTotalExpChildrenCount:I


# direct methods
.method public constructor <init>(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .param p1, "expandableListAdapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 67
    const v0, 0x7fffffff

    iput v0, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    .line 70
    new-instance v0, Landroid/widget/ExpandableListConnector$MyDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/ExpandableListConnector$MyDataSetObserver;-><init>(Landroid/widget/ExpandableListConnector;)V

    iput-object v0, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Landroid/widget/ExpandableListConnector;ZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ExpandableListConnector;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    return-void
.end method

.method private refreshExpGroupMetadataList(ZZ)V
    .locals 13
    .param p1, "forceChildrenCountRefresh"    # Z
    .param p2, "syncGroupPositions"    # Z

    .prologue
    const/4 v12, -0x1

    .line 520
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 521
    .local v2, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 522
    .local v3, "egmlSize":I
    const/4 v0, 0x0

    .line 525
    .local v0, "curFlPos":I
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    .line 527
    if-eqz p2, :cond_3

    .line 529
    const/4 v8, 0x0

    .line 531
    .local v8, "positionsChanged":Z
    add-int/lit8 v5, v3, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_2

    .line 532
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 533
    .local v1, "curGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget-wide v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gId:J

    iget v11, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v9, v10, v11}, Landroid/widget/ExpandableListConnector;->findGroupPosition(JI)I

    move-result v7

    .line 534
    .local v7, "newGPos":I
    iget v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-eq v7, v9, :cond_1

    .line 535
    if-ne v7, v12, :cond_0

    .line 537
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 538
    add-int/lit8 v3, v3, -0x1

    .line 541
    :cond_0
    iput v7, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 542
    if-nez v8, :cond_1

    const/4 v8, 0x1

    .line 531
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 546
    .end local v1    # "curGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    .end local v7    # "newGPos":I
    :cond_2
    if-eqz v8, :cond_3

    .line 548
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 553
    .end local v5    # "i":I
    .end local v8    # "positionsChanged":Z
    :cond_3
    const/4 v6, 0x0

    .line 554
    .local v6, "lastGPos":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v3, :cond_6

    .line 556
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 562
    .restart local v1    # "curGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-eq v9, v12, :cond_4

    if-eqz p1, :cond_5

    .line 563
    :cond_4
    iget-object v9, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v10, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v9, v10}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v4

    .line 572
    .local v4, "gChildrenCount":I
    :goto_2
    iget v9, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v9, v4

    iput v9, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    .line 579
    iget v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v9, v6

    add-int/2addr v0, v9

    .line 580
    iget v6, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 583
    iput v0, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    .line 584
    add-int/2addr v0, v4

    .line 585
    iput v0, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 554
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 568
    .end local v4    # "gChildrenCount":I
    :cond_5
    iget v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget v10, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    sub-int v4, v9, v10

    .restart local v4    # "gChildrenCount":I
    goto :goto_2

    .line 587
    .end local v1    # "curGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    .end local v4    # "gChildrenCount":I
    :cond_6
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method collapseGroup(I)Z
    .locals 5
    .param p1, "groupPos"    # I

    .prologue
    const/4 v4, -0x1

    .line 595
    const/4 v3, 0x2

    invoke-static {v3, p1, v4, v4}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 597
    .local v0, "elGroupPos":Landroid/widget/ExpandableListPosition;
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 598
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 599
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 603
    :goto_0
    return v2

    .line 601
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/ExpandableListConnector;->collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result v2

    .line 602
    .local v2, "retValue":Z
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0
.end method

.method collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z
    .locals 3
    .param p1, "posMetadata"    # Landroid/widget/ExpandableListConnector$PositionMetadata;

    .prologue
    const/4 v0, 0x0

    .line 616
    iget-object v1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    if-nez v1, :cond_0

    .line 630
    :goto_0
    return v0

    .line 619
    :cond_0
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 622
    invoke-direct {p0, v0, v0}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 625
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->notifyDataSetChanged()V

    .line 628
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v1, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->onGroupCollapsed(I)V

    .line 630
    const/4 v0, 0x1

    goto :goto_0
.end method

.method expandGroup(I)Z
    .locals 5
    .param p1, "groupPos"    # I

    .prologue
    const/4 v4, -0x1

    .line 638
    const/4 v3, 0x2

    invoke-static {v3, p1, v4, v4}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 640
    .local v0, "elGroupPos":Landroid/widget/ExpandableListPosition;
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 641
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 642
    invoke-virtual {p0, v1}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result v2

    .line 643
    .local v2, "retValue":Z
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 644
    return v2
.end method

.method expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z
    .locals 8
    .param p1, "posMetadata"    # Landroid/widget/ExpandableListConnector$PositionMetadata;

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 652
    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->groupPos:I

    if-gez v4, :cond_0

    .line 654
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Need group"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 657
    :cond_0
    iget v4, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    if-nez v4, :cond_2

    .line 696
    :cond_1
    :goto_0
    return v3

    .line 660
    :cond_2
    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    if-nez v4, :cond_1

    .line 663
    iget-object v4, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    if-lt v4, v5, :cond_3

    .line 667
    iget-object v4, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 669
    .local v0, "collapsedGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget-object v4, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 671
    .local v1, "collapsedIndex":I
    iget v4, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v4}, Landroid/widget/ExpandableListConnector;->collapseGroup(I)Z

    .line 674
    iget v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    if-le v4, v1, :cond_3

    .line 675
    iget v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 679
    .end local v0    # "collapsedGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    .end local v1    # "collapsedIndex":I
    :cond_3
    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v5, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v6, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v6, v6, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v5, v6}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v5

    invoke-static {v7, v7, v4, v5, v6}, Landroid/widget/ExpandableListConnector$GroupMetadata;->obtain(IIIJ)Landroid/widget/ExpandableListConnector$GroupMetadata;

    move-result-object v2

    .line 685
    .local v2, "expandedGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget-object v4, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget v5, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    invoke-virtual {v4, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 688
    invoke-direct {p0, v3, v3}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 691
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->notifyDataSetChanged()V

    .line 694
    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v4, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v3, v4}, Landroid/widget/ExpandableListAdapter;->onGroupExpanded(I)V

    .line 696
    const/4 v3, 0x1

    goto :goto_0
.end method

.method findGroupPosition(JI)I
    .locals 16
    .param p1, "groupIdToMatch"    # J
    .param p3, "seedGroupPosition"    # I

    .prologue
    .line 779
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v12}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v2

    .line 781
    .local v2, "count":I
    if-nez v2, :cond_0

    .line 782
    const/4 v12, -0x1

    .line 851
    :goto_0
    return v12

    .line 786
    :cond_0
    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v12, p1, v12

    if-nez v12, :cond_1

    .line 787
    const/4 v12, -0x1

    goto :goto_0

    .line 791
    :cond_1
    const/4 v12, 0x0

    move/from16 v0, p3

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 792
    add-int/lit8 v12, v2, -0x1

    move/from16 v0, p3

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 794
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x64

    add-long v3, v12, v14

    .line 799
    .local v3, "endTime":J
    move/from16 v5, p3

    .line 802
    .local v5, "first":I
    move/from16 v8, p3

    .line 805
    .local v8, "last":I
    const/4 v9, 0x0

    .line 815
    .local v9, "next":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    .line 816
    .local v1, "adapter":Landroid/widget/ExpandableListAdapter;
    if-nez v1, :cond_4

    .line 817
    const/4 v12, -0x1

    goto :goto_0

    .line 835
    .local v6, "hitFirst":Z
    .local v7, "hitLast":Z
    .local v10, "rowId":J
    :cond_2
    if-nez v6, :cond_3

    if-eqz v9, :cond_9

    if-nez v7, :cond_9

    .line 837
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 838
    move/from16 p3, v8

    .line 840
    const/4 v9, 0x0

    .line 820
    .end local v6    # "hitFirst":Z
    .end local v7    # "hitLast":Z
    .end local v10    # "rowId":J
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    cmp-long v12, v12, v3

    if-gtz v12, :cond_6

    .line 821
    move/from16 v0, p3

    invoke-interface {v1, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v10

    .line 822
    .restart local v10    # "rowId":J
    cmp-long v12, v10, p1

    if-nez v12, :cond_5

    move/from16 v12, p3

    .line 824
    goto :goto_0

    .line 827
    :cond_5
    add-int/lit8 v12, v2, -0x1

    if-ne v8, v12, :cond_7

    const/4 v7, 0x1

    .line 828
    .restart local v7    # "hitLast":Z
    :goto_2
    if-nez v5, :cond_8

    const/4 v6, 0x1

    .line 830
    .restart local v6    # "hitFirst":Z
    :goto_3
    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    .line 851
    .end local v6    # "hitFirst":Z
    .end local v7    # "hitLast":Z
    .end local v10    # "rowId":J
    :cond_6
    const/4 v12, -0x1

    goto :goto_0

    .line 827
    .restart local v10    # "rowId":J
    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    .line 828
    .restart local v7    # "hitLast":Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    .line 841
    .restart local v6    # "hitFirst":Z
    :cond_9
    if-nez v7, :cond_a

    if-nez v9, :cond_4

    if-nez v6, :cond_4

    .line 843
    :cond_a
    add-int/lit8 v5, v5, -0x1

    .line 844
    move/from16 p3, v5

    .line 846
    const/4 v9, 0x1

    goto :goto_1
.end method

.method getAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    iget v1, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method getExpandedGroupMetadataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 738
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 729
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 730
    .local v0, "adapter":Landroid/widget/ExpandableListAdapter;
    instance-of v1, v0, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    .line 731
    check-cast v0, Landroid/widget/Filterable;

    .end local v0    # "adapter":Landroid/widget/ExpandableListAdapter;
    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    .line 733
    :goto_0
    return-object v1

    .restart local v0    # "adapter":Landroid/widget/ExpandableListAdapter;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;
    .locals 25
    .param p1, "pos"    # Landroid/widget/ExpandableListPosition;

    .prologue
    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 260
    .local v20, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ExpandableListConnector$GroupMetadata;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 263
    .local v23, "numExpGroups":I
    const/4 v13, 0x0

    .line 264
    .local v13, "leftExpGroupIndex":I
    add-int/lit8 v19, v23, -0x1

    .line 265
    .local v19, "rightExpGroupIndex":I
    const/16 v22, 0x0

    .line 268
    .local v22, "midExpGroupIndex":I
    if-nez v23, :cond_9

    .line 274
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/widget/ExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    move/from16 v7, v22

    .line 364
    .end local v22    # "midExpGroupIndex":I
    .local v7, "midExpGroupIndex":I
    :goto_0
    return-object v2

    .line 283
    :cond_0
    :goto_1
    move/from16 v0, v19

    if-gt v13, v0, :cond_5

    .line 284
    sub-int v2, v19, v13

    div-int/lit8 v2, v2, 0x2

    add-int v7, v2, v13

    .line 285
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 287
    .local v6, "midExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v3, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-le v2, v3, :cond_1

    .line 291
    add-int/lit8 v13, v7, 0x1

    goto :goto_1

    .line 292
    :cond_1
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v3, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ge v2, v3, :cond_2

    .line 296
    add-int/lit8 v19, v7, -0x1

    goto :goto_1

    .line 297
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v3, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v2, v3, :cond_0

    .line 302
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 304
    iget v2, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/widget/ExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-static/range {v2 .. v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto :goto_0

    .line 306
    :cond_3
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 308
    iget v2, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    iget v3, v0, Landroid/widget/ExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-static/range {v2 .. v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto :goto_0

    .line 312
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 321
    .end local v6    # "midExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_5
    move-object/from16 v0, p1

    iget v2, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    .line 323
    const/4 v2, 0x0

    goto :goto_0

    .line 331
    :cond_6
    if-le v13, v7, :cond_7

    .line 342
    add-int/lit8 v2, v13, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 343
    .local v21, "leftExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    move-object/from16 v0, v21

    iget v2, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object/from16 v0, v21

    iget v4, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v3, v4

    add-int v8, v2, v3

    .line 347
    .local v8, "flPos":I
    move-object/from16 v0, p1

    iget v9, v0, Landroid/widget/ExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v11, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    const/4 v12, 0x0

    invoke-static/range {v8 .. v13}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto/16 :goto_0

    .line 349
    .end local v8    # "flPos":I
    .end local v21    # "leftExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_7
    move/from16 v0, v19

    if-ge v0, v7, :cond_8

    .line 357
    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 358
    .local v24, "rightExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    move-object/from16 v0, v24

    iget v2, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, v24

    iget v3, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    sub-int/2addr v3, v4

    sub-int v8, v2, v3

    .line 361
    .restart local v8    # "flPos":I
    move-object/from16 v0, p1

    iget v15, v0, Landroid/widget/ExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move v14, v8

    invoke-static/range {v14 .. v19}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto/16 :goto_0

    .line 364
    .end local v8    # "flPos":I
    .end local v24    # "rightExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v7    # "midExpGroupIndex":I
    .restart local v22    # "midExpGroupIndex":I
    :cond_9
    move/from16 v7, v22

    .end local v22    # "midExpGroupIndex":I
    .restart local v7    # "midExpGroupIndex":I
    goto/16 :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "flatListPos"    # I

    .prologue
    .line 401
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 404
    .local v0, "posMetadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v2, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 405
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v2, v3}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    .line 415
    .local v1, "retValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 417
    return-object v1

    .line 407
    .end local v1    # "retValue":Ljava/lang/Object;
    :cond_0
    iget-object v2, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 408
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v4, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v2, v3, v4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "retValue":Ljava/lang/Object;
    goto :goto_0

    .line 412
    .end local v1    # "retValue":Ljava/lang/Object;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Flat list position is of unknown type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getItemId(I)J
    .locals 10
    .param p1, "flatListPos"    # I

    .prologue
    .line 421
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v4

    .line 422
    .local v4, "posMetadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v7, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v8, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v8, v8, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v7, v8}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v2

    .line 425
    .local v2, "groupId":J
    iget-object v7, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v7, v7, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 426
    iget-object v7, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v7, v2, v3}, Landroid/widget/ExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide v5

    .line 436
    .local v5, "retValue":J
    :goto_0
    invoke-virtual {v4}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 438
    return-wide v5

    .line 427
    .end local v5    # "retValue":J
    :cond_0
    iget-object v7, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v7, v7, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 428
    iget-object v7, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v8, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v8, v8, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v9, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v9, v9, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v7, v8, v9}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 430
    .local v0, "childId":J
    iget-object v7, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v7, v2, v3, v0, v1}, Landroid/widget/ExpandableListAdapter;->getCombinedChildId(JJ)J

    move-result-wide v5

    .line 431
    .restart local v5    # "retValue":J
    goto :goto_0

    .line 433
    .end local v0    # "childId":J
    .end local v5    # "retValue":J
    :cond_1
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Flat list position is of unknown type"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public getItemViewType(I)I
    .locals 7
    .param p1, "flatListPos"    # I

    .prologue
    const/4 v6, 0x2

    .line 465
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 466
    .local v2, "metadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 469
    .local v3, "pos":Landroid/widget/ExpandableListPosition;
    iget-object v5, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v5, v5, Landroid/widget/HeterogeneousExpandableList;

    if-eqz v5, :cond_1

    .line 470
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    .line 472
    .local v0, "adapter":Landroid/widget/HeterogeneousExpandableList;
    iget v5, v3, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v5, v6, :cond_0

    .line 473
    iget v5, v3, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v5}, Landroid/widget/HeterogeneousExpandableList;->getGroupType(I)I

    move-result v4

    .line 486
    .end local v0    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    .local v4, "retValue":I
    :goto_0
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 488
    return v4

    .line 475
    .end local v4    # "retValue":I
    .restart local v0    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    :cond_0
    iget v5, v3, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v6, v3, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v0, v5, v6}, Landroid/widget/HeterogeneousExpandableList;->getChildType(II)I

    move-result v1

    .line 476
    .local v1, "childType":I
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v5

    add-int v4, v5, v1

    .restart local v4    # "retValue":I
    goto :goto_0

    .line 479
    .end local v0    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    .end local v1    # "childType":I
    .end local v4    # "retValue":I
    :cond_1
    iget v5, v3, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v5, v6, :cond_2

    .line 480
    const/4 v4, 0x0

    .restart local v4    # "retValue":I
    goto :goto_0

    .line 482
    .end local v4    # "retValue":I
    :cond_2
    const/4 v4, 0x1

    .restart local v4    # "retValue":I
    goto :goto_0
.end method

.method getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;
    .locals 20
    .param p1, "flPos"    # I

    .prologue
    .line 109
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 110
    .local v13, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 113
    .local v17, "numExpGroups":I
    const/4 v15, 0x0

    .line 114
    .local v15, "leftExpGroupIndex":I
    add-int/lit8 v19, v17, -0x1

    .line 115
    .local v19, "rightExpGroupIndex":I
    const/16 v16, 0x0

    .line 118
    .local v16, "midExpGroupIndex":I
    if-nez v17, :cond_7

    .line 124
    const/4 v2, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v1, p1

    move/from16 v3, p1

    invoke-static/range {v1 .. v6}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    move/from16 v6, v16

    .line 243
    .end local v16    # "midExpGroupIndex":I
    .local v6, "midExpGroupIndex":I
    :goto_0
    return-object v1

    .line 140
    :cond_0
    :goto_1
    move/from16 v0, v19

    if-gt v15, v0, :cond_4

    .line 141
    sub-int v1, v19, v15

    div-int/lit8 v1, v1, 0x2

    add-int v6, v1, v15

    .line 144
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 146
    .local v5, "midExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget v1, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    if-le v0, v1, :cond_1

    .line 151
    add-int/lit8 v15, v6, 0x1

    goto :goto_1

    .line 152
    :cond_1
    iget v1, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move/from16 v0, p1

    if-ge v0, v1, :cond_2

    .line 157
    add-int/lit8 v19, v6, -0x1

    goto :goto_1

    .line 158
    :cond_2
    iget v1, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 163
    const/4 v2, 0x2

    iget v3, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    const/4 v4, -0x1

    move/from16 v1, p1

    invoke-static/range {v1 .. v6}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    goto :goto_0

    .line 165
    :cond_3
    iget v1, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    if-gt v0, v1, :cond_0

    .line 175
    iget v1, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    add-int/lit8 v1, v1, 0x1

    sub-int v4, p1, v1

    .line 176
    .local v4, "childPos":I
    const/4 v2, 0x1

    iget v3, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    move/from16 v1, p1

    invoke-static/range {v1 .. v6}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    goto :goto_0

    .line 192
    .end local v4    # "childPos":I
    .end local v5    # "midExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_4
    const/4 v12, 0x0

    .line 195
    .local v12, "insertPosition":I
    const/4 v9, 0x0

    .line 202
    .local v9, "groupPos":I
    if-le v15, v6, :cond_5

    .line 210
    add-int/lit8 v1, v15, -0x1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 212
    .local v14, "leftExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    move v12, v15

    .line 218
    iget v1, v14, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    sub-int v1, p1, v1

    iget v2, v14, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    add-int v9, v1, v2

    .line 243
    .end local v14    # "leftExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :goto_2
    const/4 v8, 0x2

    const/4 v10, -0x1

    const/4 v11, 0x0

    move/from16 v7, p1

    invoke-static/range {v7 .. v12}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    goto :goto_0

    .line 220
    :cond_5
    move/from16 v0, v19

    if-ge v0, v6, :cond_6

    .line 227
    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 229
    .local v18, "rightExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    move/from16 v12, v19

    .line 237
    move-object/from16 v0, v18

    iget v1, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    move-object/from16 v0, v18

    iget v2, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    sub-int v2, v2, p1

    sub-int v9, v1, v2

    .line 238
    goto :goto_2

    .line 240
    .end local v18    # "rightExpGm":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown state"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v6    # "midExpGroupIndex":I
    .end local v9    # "groupPos":I
    .end local v12    # "insertPosition":I
    .restart local v16    # "midExpGroupIndex":I
    :cond_7
    move/from16 v6, v16

    .end local v16    # "midExpGroupIndex":I
    .restart local v6    # "midExpGroupIndex":I
    goto/16 :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "flatListPos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x1

    .line 442
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v6

    .line 445
    .local v6, "posMetadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v0, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 446
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-virtual {v6}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v2

    invoke-interface {v0, v1, v2, p2, p3}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 458
    .local v7, "retValue":Landroid/view/View;
    :goto_0
    invoke-virtual {v6}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 460
    return-object v7

    .line 448
    .end local v7    # "retValue":Landroid/view/View;
    :cond_0
    iget-object v0, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v0, v3, :cond_2

    .line 449
    iget-object v0, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v0, p1, :cond_1

    .line 451
    .local v3, "isLastChild":Z
    :goto_1
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v2, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->childPos:I

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 453
    .restart local v7    # "retValue":Landroid/view/View;
    goto :goto_0

    .line 449
    .end local v3    # "isLastChild":Z
    .end local v7    # "retValue":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 455
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flat list position is of unknown type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getViewTypeCount()I
    .locals 3

    .prologue
    .line 493
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v1, v1, Landroid/widget/HeterogeneousExpandableList;

    if-eqz v1, :cond_0

    .line 494
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    .line 496
    .local v0, "adapter":Landroid/widget/HeterogeneousExpandableList;
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v1

    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getChildTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 498
    .end local v0    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 763
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 764
    .local v0, "adapter":Landroid/widget/ExpandableListAdapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->isEmpty()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 6
    .param p1, "flatListPos"    # I

    .prologue
    .line 375
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 376
    .local v0, "metadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 379
    .local v1, "pos":Landroid/widget/ExpandableListPosition;
    iget v3, v1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 380
    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v4, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v5, v1, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v3, v4, v5}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    move-result v2

    .line 386
    .local v2, "retValue":Z
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 388
    return v2

    .line 383
    .end local v2    # "retValue":Z
    :cond_0
    const/4 v2, 0x1

    .restart local v2    # "retValue":Z
    goto :goto_0
.end method

.method public isGroupExpanded(I)Z
    .locals 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 706
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 707
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 709
    .local v0, "groupMetadata":Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget v2, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v2, p1, :cond_0

    .line 710
    const/4 v2, 0x1

    .line 714
    .end local v0    # "groupMetadata":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :goto_1
    return v2

    .line 706
    .restart local v0    # "groupMetadata":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 714
    .end local v0    # "groupMetadata":Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .param p1, "expandableListAdapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 91
    :cond_0
    iput-object p1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 92
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 93
    return-void
.end method

.method setExpandedGroupMetadataList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 743
    .local p1, "expandedGroupMetadataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ExpandableListConnector$GroupMetadata;>;"
    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v2, :cond_1

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    .line 750
    .local v1, "numGroups":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 751
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v2, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ge v2, v1, :cond_0

    .line 750
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 757
    :cond_2
    iput-object p1, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 758
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    goto :goto_0
.end method

.method public setMaxExpGroupCount(I)V
    .locals 0
    .param p1, "maxExpGroupCount"    # I

    .prologue
    .line 721
    iput p1, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    .line 722
    return-void
.end method
