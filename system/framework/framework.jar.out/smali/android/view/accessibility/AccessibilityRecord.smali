.class public Landroid/view/accessibility/AccessibilityRecord;
.super Ljava/lang/Object;
.source "AccessibilityRecord.java"


# static fields
.field private static final GET_SOURCE_PREFETCH_FLAGS:I = 0x7

.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final PROPERTY_CHECKED:I = 0x1

.field private static final PROPERTY_ENABLED:I = 0x2

.field private static final PROPERTY_FULL_SCREEN:I = 0x80

.field private static final PROPERTY_IMPORTANT_FOR_ACCESSIBILITY:I = 0x200

.field private static final PROPERTY_PASSWORD:I = 0x4

.field private static final PROPERTY_SCROLLABLE:I = 0x100

.field private static final UNDEFINED:I = -0x1

.field private static sPool:Landroid/view/accessibility/AccessibilityRecord;

.field private static final sPoolLock:Ljava/lang/Object;

.field private static sPoolSize:I


# instance fields
.field mAddedCount:I

.field mBeforeText:Ljava/lang/CharSequence;

.field mBooleanProperties:I

.field mClassName:Ljava/lang/CharSequence;

.field mConnectionId:I

.field mContentDescription:Ljava/lang/CharSequence;

.field mCurrentItemIndex:I

.field mFromIndex:I

.field private mIsInPool:Z

.field mItemCount:I

.field mMaxScrollX:I

.field mMaxScrollY:I

.field private mNext:Landroid/view/accessibility/AccessibilityRecord;

.field mParcelableData:Landroid/os/Parcelable;

.field mRemovedCount:I

.field mScrollX:I

.field mScrollY:I

.field mSealed:Z

.field mSourceNodeId:J

.field mSourceWindowId:I

.field final mText:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field mToIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityRecord;->sPoolLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/16 v0, 0x200

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    .line 82
    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    .line 83
    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    .line 84
    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    .line 85
    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    .line 86
    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    .line 87
    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    .line 88
    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    .line 89
    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    .line 91
    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    .line 92
    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    .line 93
    invoke-static {v2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 94
    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    .line 103
    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    .line 109
    return-void
.end method

.method private getBooleanProperty(I)Z
    .locals 1
    .param p1, "property"    # I

    .prologue
    .line 689
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static obtain()Landroid/view/accessibility/AccessibilityRecord;
    .locals 3

    .prologue
    .line 726
    sget-object v2, Landroid/view/accessibility/AccessibilityRecord;->sPoolLock:Ljava/lang/Object;

    monitor-enter v2

    .line 727
    :try_start_0
    sget-object v1, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    if-eqz v1, :cond_0

    .line 728
    sget-object v0, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    .line 729
    .local v0, "record":Landroid/view/accessibility/AccessibilityRecord;
    sget-object v1, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    iget-object v1, v1, Landroid/view/accessibility/AccessibilityRecord;->mNext:Landroid/view/accessibility/AccessibilityRecord;

    sput-object v1, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    .line 730
    sget v1, Landroid/view/accessibility/AccessibilityRecord;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/accessibility/AccessibilityRecord;->sPoolSize:I

    .line 731
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/accessibility/AccessibilityRecord;->mNext:Landroid/view/accessibility/AccessibilityRecord;

    .line 732
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/accessibility/AccessibilityRecord;->mIsInPool:Z

    .line 733
    monitor-exit v2

    .line 735
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityRecord;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityRecord;-><init>()V

    monitor-exit v2

    goto :goto_0

    .line 736
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityRecord;)Landroid/view/accessibility/AccessibilityRecord;
    .locals 1
    .param p0, "record"    # Landroid/view/accessibility/AccessibilityRecord;

    .prologue
    .line 714
    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v0

    .line 715
    .local v0, "clone":Landroid/view/accessibility/AccessibilityRecord;
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityRecord;->init(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 716
    return-object v0
.end method

.method private setBooleanProperty(IZ)V
    .locals 2
    .param p1, "property"    # I
    .param p2, "value"    # Z

    .prologue
    .line 699
    if-eqz p2, :cond_0

    .line 700
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    .line 704
    :goto_0
    return-void

    .line 702
    :cond_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    goto :goto_0
.end method


# virtual methods
.method clear()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 793
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    .line 794
    const/16 v0, 0x200

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    .line 795
    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    .line 796
    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    .line 797
    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    .line 798
    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    .line 799
    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    .line 800
    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    .line 801
    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    .line 802
    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    .line 803
    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    .line 804
    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    .line 805
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    .line 806
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    .line 807
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    .line 808
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    .line 809
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 810
    invoke-static {v2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 811
    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 812
    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    .line 813
    return-void
.end method

.method enforceNotSealed()V
    .locals 2

    .prologue
    .line 676
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isSealed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_0
    return-void
.end method

.method enforceSealed()V
    .locals 2

    .prologue
    .line 664
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isSealed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 665
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a not sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :cond_0
    return-void
.end method

.method public getAddedCount()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    return v0
.end method

.method public getBeforeText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCurrentItemIndex()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    return v0
.end method

.method public getFromIndex()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    return v0
.end method

.method public getMaxScrollX()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    return v0
.end method

.method public getMaxScrollY()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    return v0
.end method

.method public getParcelableData()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    return-object v0
.end method

.method public getRemovedCount()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    return v0
.end method

.method public getScrollX()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    return v0
.end method

.method public getSource()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    .prologue
    const/4 v3, -0x1

    .line 160
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceSealed()V

    .line 161
    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    if-eq v1, v3, :cond_0

    iget-wide v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 163
    :cond_0
    const/4 v1, 0x0

    .line 166
    :goto_0
    return-object v1

    .line 165
    :cond_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 166
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    const/4 v5, 0x0

    const/4 v6, 0x7

    invoke-virtual/range {v0 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getSourceNodeId()J
    .locals 2

    .prologue
    .line 622
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    return-wide v0
.end method

.method public getText()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 548
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    return-object v0
.end method

.method public getToIndex()I
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    return v0
.end method

.method public getWindowId()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    return v0
.end method

.method init(Landroid/view/accessibility/AccessibilityRecord;)V
    .locals 2
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;

    .prologue
    .line 767
    iget-boolean v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    .line 768
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    .line 769
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    .line 770
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    .line 771
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    .line 772
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    .line 773
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    .line 774
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    .line 775
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    .line 776
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    .line 777
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    .line 778
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    .line 779
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    .line 780
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    .line 781
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    .line 782
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    .line 783
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 784
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 785
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 786
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    .line 787
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isFullScreen()Z
    .locals 1

    .prologue
    .line 259
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isImportantForAccessibility()Z
    .locals 1

    .prologue
    .line 309
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isPassword()Z
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    .prologue
    .line 280
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method isSealed()Z
    .locals 1

    .prologue
    .line 655
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    return v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 747
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mIsInPool:Z

    if-eqz v0, :cond_0

    .line 748
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Record already recycled!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->clear()V

    .line 751
    sget-object v1, Landroid/view/accessibility/AccessibilityRecord;->sPoolLock:Ljava/lang/Object;

    monitor-enter v1

    .line 752
    :try_start_0
    sget v0, Landroid/view/accessibility/AccessibilityRecord;->sPoolSize:I

    const/16 v2, 0xa

    if-gt v0, v2, :cond_1

    .line 753
    sget-object v0, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mNext:Landroid/view/accessibility/AccessibilityRecord;

    .line 754
    sput-object p0, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    .line 755
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mIsInPool:Z

    .line 756
    sget v0, Landroid/view/accessibility/AccessibilityRecord;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/accessibility/AccessibilityRecord;->sPoolSize:I

    .line 758
    :cond_1
    monitor-exit v1

    .line 759
    return-void

    .line 758
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAddedCount(I)V
    .locals 0
    .param p1, "addedCount"    # I

    .prologue
    .line 495
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 496
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    .line 497
    return-void
.end method

.method public setBeforeText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "beforeText"    # Ljava/lang/CharSequence;

    .prologue
    .line 568
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 569
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    .line 570
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 208
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 209
    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/CharSequence;

    .prologue
    .line 537
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 538
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    .line 539
    return-void
.end method

.method public setConnectionId(I)V
    .locals 0
    .param p1, "connectionId"    # I

    .prologue
    .line 634
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 635
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    .line 636
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 589
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 590
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    .line 591
    return-void
.end method

.method public setCurrentItemIndex(I)V
    .locals 0
    .param p1, "currentItemIndex"    # I

    .prologue
    .line 350
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 351
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    .line 352
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 228
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 229
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 230
    return-void
.end method

.method public setFromIndex(I)V
    .locals 0
    .param p1, "fromIndex"    # I

    .prologue
    .line 377
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 378
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    .line 379
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 1
    .param p1, "isFullScreen"    # Z

    .prologue
    .line 270
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 271
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 272
    return-void
.end method

.method public setItemCount(I)V
    .locals 0
    .param p1, "itemCount"    # I

    .prologue
    .line 329
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 330
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    .line 331
    return-void
.end method

.method public setMaxScrollX(I)V
    .locals 0
    .param p1, "maxScrollX"    # I

    .prologue
    .line 455
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 456
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    .line 457
    return-void
.end method

.method public setMaxScrollY(I)V
    .locals 0
    .param p1, "maxScrollY"    # I

    .prologue
    .line 474
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 475
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    .line 476
    return-void
.end method

.method public setParcelableData(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "parcelableData"    # Landroid/os/Parcelable;

    .prologue
    .line 610
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 611
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    .line 612
    return-void
.end method

.method public setPassword(Z)V
    .locals 1
    .param p1, "isPassword"    # Z

    .prologue
    .line 249
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 250
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 251
    return-void
.end method

.method public setRemovedCount(I)V
    .locals 0
    .param p1, "removedCount"    # I

    .prologue
    .line 516
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 517
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    .line 518
    return-void
.end method

.method public setScrollX(I)V
    .locals 0
    .param p1, "scrollX"    # I

    .prologue
    .line 417
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 418
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    .line 419
    return-void
.end method

.method public setScrollY(I)V
    .locals 0
    .param p1, "scrollY"    # I

    .prologue
    .line 436
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 437
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    .line 438
    return-void
.end method

.method public setScrollable(Z)V
    .locals 1
    .param p1, "scrollable"    # Z

    .prologue
    .line 291
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 292
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 293
    return-void
.end method

.method public setSealed(Z)V
    .locals 0
    .param p1, "sealed"    # Z

    .prologue
    .line 646
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    .line 647
    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .locals 1
    .param p1, "source"    # Landroid/view/View;

    .prologue
    .line 119
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 120
    return-void
.end method

.method public setSource(Landroid/view/View;I)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .prologue
    const/4 v3, -0x1

    .line 137
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 139
    if-ne p2, v3, :cond_1

    .line 140
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result v0

    .line 144
    .local v0, "important":Z
    :goto_0
    const/16 v2, 0x200

    invoke-direct {p0, v2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 145
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityWindowId()I

    move-result v2

    :goto_1
    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 146
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v1

    .line 147
    .local v1, "rootViewId":I
    :goto_2
    invoke-static {v1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 148
    return-void

    .line 140
    .end local v0    # "important":Z
    .end local v1    # "rootViewId":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 142
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "important":Z
    goto :goto_0

    :cond_2
    move v2, v3

    .line 145
    goto :goto_1

    :cond_3
    move v1, v3

    .line 146
    goto :goto_2
.end method

.method public setToIndex(I)V
    .locals 0
    .param p1, "toIndex"    # I

    .prologue
    .line 398
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 399
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    .line 400
    return-void
.end method

.method public setWindowId(I)V
    .locals 0
    .param p1, "windowId"    # I

    .prologue
    .line 178
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 179
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 818
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [ ClassName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; Text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; ContentDescription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; ItemCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; CurrentItemIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; IsEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; IsPassword: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; IsChecked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; IsFullScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x80

    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; Scrollable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x100

    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; BeforeText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; FromIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; ToIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; ScrollX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; ScrollY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; MaxScrollX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; MaxScrollY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; AddedCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; RemovedCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; ParcelableData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
