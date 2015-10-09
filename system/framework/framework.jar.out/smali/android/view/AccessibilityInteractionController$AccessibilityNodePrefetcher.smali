.class Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityNodePrefetcher"
.end annotation


# static fields
.field private static final MAX_ACCESSIBILITY_NODE_INFO_BATCH_SIZE:I = 0x32


# instance fields
.field private final mTempViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method private constructor <init>(Landroid/view/AccessibilityInteractionController;)V
    .locals 1

    .prologue
    .line 700
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 704
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mTempViewList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p2, "x1"    # Landroid/view/AccessibilityInteractionController$1;

    .prologue
    .line 700
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;-><init>(Landroid/view/AccessibilityInteractionController;)V

    return-void
.end method

.method private prefetchDescendantsOfRealNode(Landroid/view/View;Ljava/util/List;)V
    .locals 13
    .param p1, "root"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/16 v12, 0x32

    .line 793
    instance-of v11, p1, Landroid/view/ViewGroup;

    if-nez v11, :cond_1

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 798
    .local v1, "addedChildren":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mTempViewList:Ljava/util/ArrayList;

    .line 799
    .local v4, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 801
    :try_start_0
    invoke-virtual {p1, v4}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 802
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 803
    .local v3, "childCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v3, :cond_5

    .line 804
    invoke-interface {p2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-lt v11, v12, :cond_2

    .line 827
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 807
    :cond_2
    :try_start_1
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 808
    .local v2, "child":Landroid/view/View;
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    # invokes: Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z
    invoke-static {v11, v2}, Landroid/view/AccessibilityInteractionController;->access$200(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 809
    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v9

    .line 810
    .local v9, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v9, :cond_4

    .line 811
    invoke-virtual {v2}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    .line 812
    .local v8, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v8, :cond_3

    .line 813
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    const/4 v11, 0x0

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    .end local v8    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v9    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 817
    .restart local v9    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_4
    const/4 v11, -0x1

    invoke-virtual {v9, v11}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    .line 819
    .restart local v8    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v8, :cond_3

    .line 820
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 827
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childCount":I
    .end local v6    # "i":I
    .end local v8    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v9    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :catchall_0
    move-exception v11

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    throw v11

    .restart local v3    # "childCount":I
    .restart local v6    # "i":I
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 829
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v11, v12, :cond_0

    .line 830
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 831
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 832
    .local v0, "addedChild":Landroid/view/View;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 833
    .local v10, "virtualRoot":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v10, :cond_6

    .line 834
    invoke-direct {p0, v0, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    goto :goto_3

    .line 836
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v9

    .line 838
    .restart local v9    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    invoke-direct {p0, v10, v9, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    goto :goto_3
.end method

.method private prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V
    .locals 10
    .param p1, "root"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "provider"    # Landroid/view/accessibility/AccessibilityNodeProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Landroid/view/accessibility/AccessibilityNodeProvider;",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/16 v9, 0x32

    .line 909
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/SparseLongArray;

    move-result-object v5

    .line 910
    .local v5, "childNodeIds":Landroid/util/SparseLongArray;
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    .line 911
    .local v7, "initialOutInfosSize":I
    invoke-virtual {v5}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    .line 912
    .local v2, "childCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_3

    .line 913
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    if-lt v8, v9, :cond_1

    .line 930
    :cond_0
    return-void

    .line 916
    :cond_1
    invoke-virtual {v5, v6}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    .line 917
    .local v3, "childNodeId":J
    invoke-static {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v8

    invoke-virtual {p2, v8}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 919
    .local v1, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_2

    .line 920
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 912
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 923
    .end local v1    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v3    # "childNodeId":J
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v9, :cond_0

    .line 924
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    sub-int v0, v8, v7

    .line 925
    .local v0, "addedChildCount":I
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_0

    .line 926
    add-int v8, v7, v6

    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 927
    .restart local v1    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v1, p2, p3}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    .line 925
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method private prefetchPredecessorsOfRealNode(Landroid/view/View;Ljava/util/List;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 742
    .local p2, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    .line 744
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x32

    if-ge v3, v4, :cond_1

    move-object v2, v1

    .line 745
    check-cast v2, Landroid/view/View;

    .line 746
    .local v2, "parentView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 747
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 748
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    :cond_0
    invoke-interface {v1}, Landroid/view/ViewParent;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    .line 751
    goto :goto_0

    .line 752
    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "parentView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private prefetchPredecessorsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V
    .locals 8
    .param p1, "root"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "providerHost"    # Landroid/view/View;
    .param p3, "provider"    # Landroid/view/accessibility/AccessibilityNodeProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Landroid/view/View;",
            "Landroid/view/accessibility/AccessibilityNodeProvider;",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/4 v7, -0x1

    .line 847
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v2

    .line 848
    .local v2, "parentNodeId":J
    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    .line 849
    .local v0, "accessibilityViewId":I
    :goto_0
    if-eq v0, v7, :cond_0

    .line 850
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x32

    if-lt v5, v6, :cond_1

    .line 870
    :cond_0
    :goto_1
    return-void

    .line 853
    :cond_1
    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v4

    .line 855
    .local v4, "virtualDescendantId":I
    if-ne v4, v7, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v5

    if-ne v0, v5, :cond_4

    .line 857
    :cond_2
    invoke-virtual {p3, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 859
    .local v1, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_3

    .line 860
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    :cond_3
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v2

    .line 863
    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    .line 865
    goto :goto_0

    .line 866
    .end local v1    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_4
    invoke-direct {p0, p2, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchPredecessorsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    goto :goto_1
.end method

.method private prefetchSiblingsOfRealNode(Landroid/view/View;Ljava/util/List;)V
    .locals 10
    .param p1, "current"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 756
    .local p2, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v5

    .line 757
    .local v5, "parent":Landroid/view/ViewParent;
    instance-of v8, v5, Landroid/view/ViewGroup;

    if-eqz v8, :cond_0

    move-object v6, v5

    .line 758
    check-cast v6, Landroid/view/ViewGroup;

    .line 759
    .local v6, "parentGroup":Landroid/view/ViewGroup;
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mTempViewList:Ljava/util/ArrayList;

    .line 760
    .local v2, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 762
    :try_start_0
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 763
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 764
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 765
    invoke-interface {p2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    const/16 v9, 0x32

    if-lt v8, v9, :cond_1

    .line 786
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 789
    .end local v1    # "childCount":I
    .end local v2    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "i":I
    .end local v6    # "parentGroup":Landroid/view/ViewGroup;
    :cond_0
    :goto_1
    return-void

    .line 768
    .restart local v1    # "childCount":I
    .restart local v2    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v3    # "i":I
    .restart local v6    # "parentGroup":Landroid/view/ViewGroup;
    :cond_1
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 769
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v9

    if-eq v8, v9, :cond_2

    iget-object v8, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    # invokes: Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z
    invoke-static {v8, v0}, Landroid/view/AccessibilityInteractionController;->access$200(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 771
    const/4 v4, 0x0

    .line 772
    .local v4, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v7

    .line 774
    .local v7, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v7, :cond_3

    .line 775
    invoke-virtual {v0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 780
    :goto_2
    if-eqz v4, :cond_2

    .line 781
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    .end local v4    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v7    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 777
    .restart local v4    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v7    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_3
    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    goto :goto_2

    .line 786
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v7    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .end local v1    # "childCount":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v8

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    throw v8
.end method

.method private prefetchSiblingsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V
    .locals 17
    .param p1, "current"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "providerHost"    # Landroid/view/View;
    .param p3, "provider"    # Landroid/view/accessibility/AccessibilityNodeProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Landroid/view/View;",
            "Landroid/view/accessibility/AccessibilityNodeProvider;",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 874
    .local p4, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v12

    .line 875
    .local v12, "parentNodeId":J
    invoke-static {v12, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v11

    .line 877
    .local v11, "parentAccessibilityViewId":I
    invoke-static {v12, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v14

    .line 879
    .local v14, "parentVirtualDescendantId":I
    const/4 v15, -0x1

    if-ne v14, v15, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v15

    if-ne v11, v15, :cond_4

    .line 881
    :cond_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v10

    .line 883
    .local v10, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v10, :cond_1

    .line 884
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/SparseLongArray;

    move-result-object v7

    .line 885
    .local v7, "childNodeIds":Landroid/util/SparseLongArray;
    invoke-virtual {v7}, Landroid/util/SparseLongArray;->size()I

    move-result v4

    .line 886
    .local v4, "childCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v4, :cond_1

    .line 887
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x32

    move/from16 v0, v16

    if-lt v15, v0, :cond_2

    .line 905
    .end local v4    # "childCount":I
    .end local v7    # "childNodeIds":Landroid/util/SparseLongArray;
    .end local v9    # "i":I
    .end local v10    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1
    :goto_1
    return-void

    .line 890
    .restart local v4    # "childCount":I
    .restart local v7    # "childNodeIds":Landroid/util/SparseLongArray;
    .restart local v9    # "i":I
    .restart local v10    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2
    invoke-virtual {v7, v9}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v5

    .line 891
    .local v5, "childNodeId":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v15

    cmp-long v15, v5, v15

    if-eqz v15, :cond_3

    .line 892
    invoke-static {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v8

    .line 894
    .local v8, "childVirtualDescendantId":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 896
    .local v3, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v3, :cond_3

    .line 897
    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    .end local v3    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v8    # "childVirtualDescendantId":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 903
    .end local v4    # "childCount":I
    .end local v5    # "childNodeId":J
    .end local v7    # "childNodeIds":Landroid/util/SparseLongArray;
    .end local v9    # "i":I
    .end local v10    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchSiblingsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    goto :goto_1
.end method


# virtual methods
.method public prefetchAccessibilityNodeInfos(Landroid/view/View;IILjava/util/List;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualViewId"    # I
    .param p3, "fetchFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "II",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 708
    .local p4, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 709
    .local v0, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v0, :cond_3

    .line 710
    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 711
    .local v1, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_2

    .line 712
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_0

    .line 714
    invoke-direct {p0, p1, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchPredecessorsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    .line 716
    :cond_0
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_1

    .line 717
    invoke-direct {p0, p1, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchSiblingsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    .line 719
    :cond_1
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_2

    .line 720
    invoke-direct {p0, p1, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    .line 738
    :cond_2
    :goto_0
    return-void

    .line 724
    .end local v1    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_3
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 725
    .restart local v1    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_2

    .line 726
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_4

    .line 728
    invoke-direct {p0, v1, p1, v0, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchPredecessorsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    .line 730
    :cond_4
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_5

    .line 731
    invoke-direct {p0, v1, p1, v0, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchSiblingsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    .line 733
    :cond_5
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_2

    .line 734
    invoke-direct {p0, v1, v0, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    goto :goto_0
.end method
