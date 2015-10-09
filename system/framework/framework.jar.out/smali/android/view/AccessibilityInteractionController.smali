.class final Landroid/view/AccessibilityInteractionController;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/AccessibilityInteractionController$1;,
        Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;,
        Landroid/view/AccessibilityInteractionController$PrivateHandler;,
        Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;
    }
.end annotation


# instance fields
.field private mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

.field private final mHandler:Landroid/os/Handler;

.field private final mMyLooperThreadId:J

.field private final mMyProcessId:I

.field private final mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

.field private final mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field private final mViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 3
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    .line 66
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    .line 67
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 68
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRect1:Landroid/graphics/Rect;

    .line 69
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRect2:Landroid/graphics/Rect;

    .line 74
    iget-object v1, p1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 75
    .local v0, "looper":Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    .line 76
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    .line 77
    new-instance v1, Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-direct {v1, p0, v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    .line 78
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 79
    new-instance v1, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$1;)V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    .line 80
    return-void
.end method

.method static synthetic access$200(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->perfromAccessibilityActionUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findFocusUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$800(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/AccessibilityInteractionController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->focusSearchUiThread(Landroid/os/Message;)V

    return-void
.end method

.method private applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V
    .locals 13
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 633
    if-nez p1, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v9, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 638
    .local v0, "applicationScale":F
    invoke-direct {p0, v0, p2}, Landroid/view/AccessibilityInteractionController;->shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 642
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 643
    .local v2, "boundsInParent":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mTempRect1:Landroid/graphics/Rect;

    .line 645
    .local v3, "boundsInScreen":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 646
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 647
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v0, v9

    if-eqz v9, :cond_2

    .line 648
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 649
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 651
    :cond_2
    if-eqz p2, :cond_3

    .line 652
    iget v9, p2, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->scale(F)V

    .line 654
    iget v9, p2, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v3, v9}, Landroid/graphics/Rect;->scale(F)V

    .line 655
    iget v9, p2, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v9, v9

    iget v10, p2, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v10, v10

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 657
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 658
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 660
    if-eqz p2, :cond_0

    .line 661
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 662
    .local v1, "attachInfo":Landroid/view/View$AttachInfo;
    iget-object v9, v1, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    if-eqz v9, :cond_0

    .line 666
    iget v9, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    iget v10, p2, Landroid/view/MagnificationSpec;->scale:F

    mul-float v6, v9, v10

    .line 668
    .local v6, "scale":F
    iget-object v8, p0, Landroid/view/AccessibilityInteractionController;->mTempRect1:Landroid/graphics/Rect;

    .line 669
    .local v8, "visibleWinFrame":Landroid/graphics/Rect;
    iget v9, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v9, v9

    mul-float/2addr v9, v6

    iget v10, p2, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 670
    iget v9, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v9, v9

    mul-float/2addr v9, v6

    iget v10, p2, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 671
    iget v9, v8, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v10, v10, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float v10, v10

    mul-float/2addr v10, v6

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 672
    iget v9, v8, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v10, v10, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v10, v10

    mul-float/2addr v10, v6

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 674
    iget-object v9, v1, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v9, v10}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 675
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    iget v5, v9, Landroid/graphics/Point;->x:I

    .line 676
    .local v5, "displayWidth":I
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    iget v4, v9, Landroid/graphics/Point;->y:I

    .line 678
    .local v4, "displayHeight":I
    iget-object v7, p0, Landroid/view/AccessibilityInteractionController;->mTempRect2:Landroid/graphics/Rect;

    .line 679
    .local v7, "visibleDisplayFrame":Landroid/graphics/Rect;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10, v5, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 681
    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 683
    iget v9, v3, Landroid/graphics/Rect;->left:I

    iget v10, v3, Landroid/graphics/Rect;->top:I

    iget v11, v3, Landroid/graphics/Rect;->right:I

    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v9

    if-nez v9, :cond_0

    .line 685
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    goto/16 :goto_0
.end method

.method private applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V
    .locals 5
    .param p2, "spec"    # Landroid/view/MagnificationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/MagnificationSpec;",
            ")V"
        }
    .end annotation

    .prologue
    .line 618
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez p1, :cond_1

    .line 629
    :cond_0
    return-void

    .line 621
    :cond_1
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v4, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 622
    .local v0, "applicationScale":F
    invoke-direct {p0, v0, p2}, Landroid/view/AccessibilityInteractionController;->shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 623
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 624
    .local v3, "infoCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 625
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 626
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v2, p2}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    .line 624
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 121
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 123
    .local v3, "flags":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 124
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget v0, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 125
    .local v0, "accessibilityViewId":I
    iget v8, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 126
    .local v8, "virtualDescendantId":I
    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 127
    .local v5, "interactionId":I
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 129
    .local v2, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Landroid/view/MagnificationSpec;

    .line 131
    .local v7, "spec":Landroid/view/MagnificationSpec;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 133
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 134
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 136
    :try_start_0
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_2

    .line 151
    :cond_0
    :try_start_1
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x0

    iput v10, v9, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 152
    invoke-direct {p0, v4, v7}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    .line 153
    if-eqz v7, :cond_1

    .line 154
    invoke-virtual {v7}, Landroid/view/MagnificationSpec;->recycle()V

    .line 156
    :cond_1
    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    .line 157
    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 162
    :goto_0
    return-void

    .line 139
    :cond_2
    :try_start_2
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v3, v9, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 140
    const/4 v6, 0x0

    .line 141
    .local v6, "root":Landroid/view/View;
    const/4 v9, -0x1

    if-ne v0, v9, :cond_5

    .line 142
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v6, v9, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 146
    :goto_1
    if-eqz v6, :cond_3

    invoke-direct {p0, v6}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 147
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    invoke-virtual {v9, v6, v8, v3, v4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchAccessibilityNodeInfos(Landroid/view/View;IILjava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    :cond_3
    :try_start_3
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x0

    iput v10, v9, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 152
    invoke-direct {p0, v4, v7}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    .line 153
    if-eqz v7, :cond_4

    .line 154
    invoke-virtual {v7}, Landroid/view/MagnificationSpec;->recycle()V

    .line 156
    :cond_4
    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    .line 157
    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v9

    goto :goto_0

    .line 144
    :cond_5
    :try_start_4
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v6

    goto :goto_1

    .line 150
    .end local v6    # "root":Landroid/view/View;
    :catchall_0
    move-exception v9

    .line 151
    :try_start_5
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v11, 0x0

    iput v11, v10, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 152
    invoke-direct {p0, v4, v7}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    .line 153
    if-eqz v7, :cond_6

    .line 154
    invoke-virtual {v7}, Landroid/view/MagnificationSpec;->recycle()V

    .line 156
    :cond_6
    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    .line 157
    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 160
    :goto_2
    throw v9

    .line 158
    :catch_1
    move-exception v10

    goto :goto_2

    :catch_2
    move-exception v9

    goto :goto_0
.end method

.method private findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V
    .locals 21
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 274
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 276
    .local v5, "flags":I
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    .line 277
    .local v3, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v15, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    .line 278
    .local v15, "text":Ljava/lang/String;
    iget-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 280
    .local v4, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v14, v3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v14, Landroid/view/MagnificationSpec;

    .line 281
    .local v14, "spec":Landroid/view/MagnificationSpec;
    iget v2, v3, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 282
    .local v2, "accessibilityViewId":I
    iget v0, v3, Lcom/android/internal/os/SomeArgs;->argi2:I

    move/from16 v17, v0

    .line 283
    .local v17, "virtualDescendantId":I
    iget v11, v3, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 284
    .local v11, "interactionId":I
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 286
    const/4 v9, 0x0

    .line 288
    .local v9, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v18, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v18, :cond_2

    .line 334
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 335
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    .line 336
    if-eqz v14, :cond_1

    .line 337
    invoke-virtual {v14}, Landroid/view/MagnificationSpec;->recycle()V

    .line 339
    :cond_1
    invoke-interface {v4, v9, v11}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 344
    :goto_0
    return-void

    .line 291
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput v5, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 292
    const/4 v13, 0x0

    .line 293
    .local v13, "root":Landroid/view/View;
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v2, v0, :cond_5

    .line 294
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v13

    .line 298
    :goto_1
    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 299
    invoke-virtual {v13}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v12

    .line 300
    .local v12, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v12, :cond_6

    .line 301
    move/from16 v0, v17

    invoke-virtual {v12, v15, v0}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 334
    .end local v12    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 335
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    .line 336
    if-eqz v14, :cond_4

    .line 337
    invoke-virtual {v14}, Landroid/view/MagnificationSpec;->recycle()V

    .line 339
    :cond_4
    invoke-interface {v4, v9, v11}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 340
    :catch_0
    move-exception v18

    goto :goto_0

    .line 296
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    goto :goto_1

    .line 303
    .restart local v12    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_6
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 304
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    .line 305
    .local v7, "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 306
    const/16 v18, 0x7

    move/from16 v0, v18

    invoke-virtual {v13, v7, v15, v0}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 309
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_3

    .line 310
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 311
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 312
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 313
    .local v16, "viewCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v8, v0, :cond_3

    .line 314
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 315
    .local v6, "foundView":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 316
    invoke-virtual {v6}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v12

    .line 317
    if-eqz v12, :cond_8

    .line 318
    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    .line 321
    .local v10, "infosFromProvider":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz v10, :cond_7

    .line 322
    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 313
    .end local v10    # "infosFromProvider":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_7
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 325
    :cond_8
    invoke-virtual {v6}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 333
    .end local v6    # "foundView":Landroid/view/View;
    .end local v7    # "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v8    # "i":I
    .end local v12    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v13    # "root":Landroid/view/View;
    .end local v16    # "viewCount":I
    :catchall_0
    move-exception v18

    .line 334
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 335
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    .line 336
    if-eqz v14, :cond_9

    .line 337
    invoke-virtual {v14}, Landroid/view/MagnificationSpec;->recycle()V

    .line 339
    :cond_9
    invoke-interface {v4, v9, v11}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 342
    :goto_4
    throw v18

    .line 340
    :catch_1
    move-exception v19

    goto :goto_4

    :catch_2
    move-exception v18

    goto/16 :goto_0
.end method

.method private findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V
    .locals 13
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 193
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 194
    .local v3, "flags":I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 196
    .local v0, "accessibilityViewId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 197
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 198
    .local v5, "interactionId":I
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 200
    .local v2, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v8, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v8, Landroid/view/MagnificationSpec;

    .line 201
    .local v8, "spec":Landroid/view/MagnificationSpec;
    iget-object v9, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 203
    .local v9, "viewId":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 205
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 206
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 208
    :try_start_0
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_2

    .line 233
    :cond_0
    :try_start_1
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v11, 0x0

    iput v11, v10, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 234
    invoke-direct {p0, v4, v8}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    .line 235
    if-eqz v8, :cond_1

    .line 236
    invoke-virtual {v8}, Landroid/view/MagnificationSpec;->recycle()V

    .line 238
    :cond_1
    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 243
    :goto_0
    return-void

    .line 211
    :cond_2
    :try_start_2
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v3, v10, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 212
    const/4 v7, 0x0

    .line 213
    .local v7, "root":Landroid/view/View;
    const/4 v10, -0x1

    if-eq v0, v10, :cond_4

    .line 214
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v7

    .line 218
    :goto_1
    if-eqz v7, :cond_7

    .line 219
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v9, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    .line 221
    .local v6, "resolvedViewId":I
    if-gtz v6, :cond_5

    .line 233
    :try_start_3
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v11, 0x0

    iput v11, v10, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 234
    invoke-direct {p0, v4, v8}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    .line 235
    if-eqz v8, :cond_3

    .line 236
    invoke-virtual {v8}, Landroid/view/MagnificationSpec;->recycle()V

    .line 238
    :cond_3
    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v10

    goto :goto_0

    .line 216
    .end local v6    # "resolvedViewId":I
    :cond_4
    :try_start_4
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v7, v10, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    goto :goto_1

    .line 224
    .restart local v6    # "resolvedViewId":I
    :cond_5
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    if-nez v10, :cond_6

    .line 225
    new-instance v10, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$1;)V

    iput-object v10, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    .line 227
    :cond_6
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v10, v6, v4}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->init(ILjava/util/List;)V

    .line 228
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    .line 229
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v10}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->reset()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 233
    .end local v6    # "resolvedViewId":I
    :cond_7
    :try_start_5
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v11, 0x0

    iput v11, v10, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 234
    invoke-direct {p0, v4, v8}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    .line 235
    if-eqz v8, :cond_8

    .line 236
    invoke-virtual {v8}, Landroid/view/MagnificationSpec;->recycle()V

    .line 238
    :cond_8
    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 239
    :catch_1
    move-exception v10

    goto :goto_0

    .line 232
    .end local v7    # "root":Landroid/view/View;
    :catchall_0
    move-exception v10

    .line 233
    :try_start_6
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput v12, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 234
    invoke-direct {p0, v4, v8}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    .line 235
    if-eqz v8, :cond_9

    .line 236
    invoke-virtual {v8}, Landroid/view/MagnificationSpec;->recycle()V

    .line 238
    :cond_9
    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 241
    :goto_2
    throw v10

    .line 239
    :catch_2
    move-exception v11

    goto :goto_2

    :catch_3
    move-exception v10

    goto/16 :goto_0
.end method

.method private findFocusUiThread(Landroid/os/Message;)V
    .locals 17
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 376
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 377
    .local v4, "flags":I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    .line 379
    .local v5, "focusType":I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 380
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget v8, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 381
    .local v8, "interactionId":I
    iget v1, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 382
    .local v1, "accessibilityViewId":I
    iget v13, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 383
    .local v13, "virtualDescendantId":I
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 385
    .local v3, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v11, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v11, Landroid/view/MagnificationSpec;

    .line 386
    .local v11, "spec":Landroid/view/MagnificationSpec;
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 388
    const/4 v6, 0x0

    .line 390
    .local v6, "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v14, v14, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v14, v14, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v14, :cond_2

    .line 444
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v14, v14, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v15, 0x0

    iput v15, v14, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 445
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    .line 446
    if-eqz v11, :cond_1

    .line 447
    invoke-virtual {v11}, Landroid/view/MagnificationSpec;->recycle()V

    .line 449
    :cond_1
    invoke-interface {v3, v6, v8}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 454
    :goto_0
    return-void

    .line 393
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v14, v14, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v4, v14, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 394
    const/4 v10, 0x0

    .line 395
    .local v10, "root":Landroid/view/View;
    const/4 v14, -0x1

    if-eq v1, v14, :cond_4

    .line 396
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v10

    .line 400
    :goto_1
    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 401
    packed-switch v5, :pswitch_data_0

    .line 439
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown focus type: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 443
    .end local v10    # "root":Landroid/view/View;
    :catchall_0
    move-exception v14

    .line 444
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v15, v15, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 445
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    .line 446
    if-eqz v11, :cond_3

    .line 447
    invoke-virtual {v11}, Landroid/view/MagnificationSpec;->recycle()V

    .line 449
    :cond_3
    invoke-interface {v3, v6, v8}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 452
    :goto_2
    throw v14

    .line 398
    .restart local v10    # "root":Landroid/view/View;
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v14, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    goto :goto_1

    .line 403
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v7, v14, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 406
    .local v7, "host":Landroid/view/View;
    if-eqz v7, :cond_5

    invoke-static {v7, v10}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v14

    if-nez v14, :cond_7

    .line 444
    .end local v7    # "host":Landroid/view/View;
    :cond_5
    :goto_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v14, v14, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v15, 0x0

    iput v15, v14, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 445
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    .line 446
    if-eqz v11, :cond_6

    .line 447
    invoke-virtual {v11}, Landroid/view/MagnificationSpec;->recycle()V

    .line 449
    :cond_6
    invoke-interface {v3, v6, v8}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 450
    :catch_0
    move-exception v14

    goto/16 :goto_0

    .line 410
    .restart local v7    # "host":Landroid/view/View;
    :cond_7
    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 415
    invoke-virtual {v7}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v9

    .line 416
    .local v9, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v9, :cond_8

    .line 417
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v14, v14, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v14, :cond_5

    .line 418
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v14, v14, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    goto :goto_3

    .line 421
    :cond_8
    const/4 v14, -0x1

    if-ne v13, v14, :cond_5

    .line 422
    invoke-virtual {v7}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    goto :goto_3

    .line 426
    .end local v7    # "host":Landroid/view/View;
    .end local v9    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :pswitch_1
    invoke-virtual {v10}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v12

    .line 427
    .local v12, "target":Landroid/view/View;
    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 430
    invoke-virtual {v12}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v9

    .line 431
    .restart local v9    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v9, :cond_9

    .line 432
    invoke-virtual {v9, v5}, Landroid/view/accessibility/AccessibilityNodeProvider;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    .line 434
    :cond_9
    if-nez v6, :cond_5

    .line 435
    invoke-virtual {v12}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v6

    goto :goto_3

    .line 450
    .end local v9    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v10    # "root":Landroid/view/View;
    .end local v12    # "target":Landroid/view/View;
    :catch_1
    move-exception v15

    goto :goto_2

    :catch_2
    move-exception v14

    goto/16 :goto_0

    .line 401
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findViewByAccessibilityId(I)Landroid/view/View;
    .locals 4
    .param p1, "accessibilityId"    # I

    .prologue
    const/4 v2, 0x0

    .line 605
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 606
    .local v1, "root":Landroid/view/View;
    if-nez v1, :cond_1

    move-object v0, v2

    .line 613
    :cond_0
    :goto_0
    return-object v0

    .line 609
    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 610
    .local v0, "foundView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    .line 611
    goto :goto_0
.end method

.method private focusSearchUiThread(Landroid/os/Message;)V
    .locals 13
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 485
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 486
    .local v4, "flags":I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 488
    .local v0, "accessibilityViewId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 489
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 490
    .local v3, "direction":I
    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 491
    .local v5, "interactionId":I
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 493
    .local v2, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v9, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v9, Landroid/view/MagnificationSpec;

    .line 495
    .local v9, "spec":Landroid/view/MagnificationSpec;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 497
    const/4 v6, 0x0

    .line 499
    .local v6, "next":Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_start_0
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_2

    .line 517
    :cond_0
    :try_start_1
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v11, 0x0

    iput v11, v10, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 518
    invoke-direct {p0, v6, v9}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    .line 519
    if-eqz v9, :cond_1

    .line 520
    invoke-virtual {v9}, Landroid/view/MagnificationSpec;->recycle()V

    .line 522
    :cond_1
    invoke-interface {v2, v6, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 527
    :goto_0
    return-void

    .line 502
    :cond_2
    :try_start_2
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v4, v10, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 503
    const/4 v8, 0x0

    .line 504
    .local v8, "root":Landroid/view/View;
    const/4 v10, -0x1

    if-eq v0, v10, :cond_5

    .line 505
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v8

    .line 509
    :goto_1
    if-eqz v8, :cond_3

    invoke-direct {p0, v8}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 510
    invoke-virtual {v8, v3}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v7

    .line 511
    .local v7, "nextView":Landroid/view/View;
    if-eqz v7, :cond_3

    .line 512
    invoke-virtual {v7}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 517
    .end local v7    # "nextView":Landroid/view/View;
    :cond_3
    :try_start_3
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v11, 0x0

    iput v11, v10, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 518
    invoke-direct {p0, v6, v9}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    .line 519
    if-eqz v9, :cond_4

    .line 520
    invoke-virtual {v9}, Landroid/view/MagnificationSpec;->recycle()V

    .line 522
    :cond_4
    invoke-interface {v2, v6, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 523
    :catch_0
    move-exception v10

    goto :goto_0

    .line 507
    :cond_5
    :try_start_4
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v8, v10, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 516
    .end local v8    # "root":Landroid/view/View;
    :catchall_0
    move-exception v10

    .line 517
    :try_start_5
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput v12, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 518
    invoke-direct {p0, v6, v9}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    .line 519
    if-eqz v9, :cond_6

    .line 520
    invoke-virtual {v9}, Landroid/view/MagnificationSpec;->recycle()V

    .line 522
    :cond_6
    invoke-interface {v2, v6, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 525
    :goto_2
    throw v10

    .line 523
    :catch_1
    move-exception v11

    goto :goto_2

    :catch_2
    move-exception v10

    goto :goto_0
.end method

.method private isShown(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private perfromAccessibilityActionUiThread(Landroid/os/Message;)V
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v12, -0x1

    .line 560
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 561
    .local v5, "flags":I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 563
    .local v0, "accessibilityViewId":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 564
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget v10, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 565
    .local v10, "virtualDescendantId":I
    iget v1, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 566
    .local v1, "action":I
    iget v6, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 567
    .local v6, "interactionId":I
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 569
    .local v4, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 571
    .local v3, "arguments":Landroid/os/Bundle;
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 573
    const/4 v8, 0x0

    .line 575
    .local v8, "succeeded":Z
    :try_start_0
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v11, :cond_0

    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v11, :cond_1

    .line 596
    :cond_0
    :try_start_1
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput v12, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 597
    invoke-interface {v4, v8, v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 602
    :goto_0
    return-void

    .line 578
    :cond_1
    :try_start_2
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v5, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 579
    const/4 v9, 0x0

    .line 580
    .local v9, "target":Landroid/view/View;
    if-eq v0, v12, :cond_3

    .line 581
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v9

    .line 585
    :goto_1
    if-eqz v9, :cond_2

    invoke-direct {p0, v9}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 586
    invoke-virtual {v9}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v7

    .line 587
    .local v7, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v7, :cond_4

    .line 588
    invoke-virtual {v7, v10, v1, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    .line 596
    .end local v7    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_2
    :goto_2
    :try_start_3
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput v12, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 597
    invoke-interface {v4, v8, v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 598
    :catch_0
    move-exception v11

    goto :goto_0

    .line 583
    :cond_3
    :try_start_4
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v9, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    goto :goto_1

    .line 590
    .restart local v7    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_4
    if-ne v10, v12, :cond_2

    .line 591
    invoke-virtual {v9, v1, v3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v8

    goto :goto_2

    .line 595
    .end local v7    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v9    # "target":Landroid/view/View;
    :catchall_0
    move-exception v11

    .line 596
    :try_start_5
    iget-object v12, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v12, v12, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v13, 0x0

    iput v13, v12, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 597
    invoke-interface {v4, v8, v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 600
    :goto_3
    throw v11

    .line 598
    :catch_1
    move-exception v12

    goto :goto_3

    :catch_2
    move-exception v11

    goto :goto_0
.end method

.method private shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z
    .locals 1
    .param p1, "appScale"    # F
    .param p2, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 692
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public findAccessibilityNodeInfoByAccessibilityIdClientThread(JILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 4
    .param p1, "accessibilityNodeId"    # J
    .param p3, "interactionId"    # I
    .param p4, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p5, "flags"    # I
    .param p6, "interrogatingPid"    # I
    .param p7, "interrogatingTid"    # J
    .param p9, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 96
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 97
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 98
    iput p5, v1, Landroid/os/Message;->arg1:I

    .line 100
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 101
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 102
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v2

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 103
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 104
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 105
    iput-object p9, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 106
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 112
    iget v2, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p6, v2, :cond_0

    iget-wide v2, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v2, p7, v2

    if-nez v2, :cond_0

    .line 113
    invoke-static {p7, p8}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public findAccessibilityNodeInfosByTextClientThread(JLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 4
    .param p1, "accessibilityNodeId"    # J
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "interrogatingPid"    # I
    .param p8, "interrogatingTid"    # J
    .param p10, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 248
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 249
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 250
    iput p6, v1, Landroid/os/Message;->arg1:I

    .line 252
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 253
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 254
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 255
    iput-object p10, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 256
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 257
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v2

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 258
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 259
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 265
    iget v2, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p7, v2, :cond_0

    iget-wide v2, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v2, p8, v2

    if-nez v2, :cond_0

    .line 266
    invoke-static {p8, p9}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public findAccessibilityNodeInfosByViewIdClientThread(JLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 4
    .param p1, "accessibilityNodeId"    # J
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "interrogatingPid"    # I
    .param p8, "interrogatingTid"    # J
    .param p10, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 167
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 168
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 169
    iput p6, v1, Landroid/os/Message;->arg1:I

    .line 170
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 172
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 173
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 174
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 175
    iput-object p10, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 176
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 178
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 184
    iget v2, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p7, v2, :cond_0

    iget-wide v2, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v2, p8, v2

    if-nez v2, :cond_0

    .line 185
    invoke-static {p8, p9}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public findFocusClientThread(JIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 4
    .param p1, "accessibilityNodeId"    # J
    .param p3, "focusType"    # I
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "interogatingPid"    # I
    .param p8, "interrogatingTid"    # J
    .param p10, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 349
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 350
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 351
    iput p6, v1, Landroid/os/Message;->arg1:I

    .line 352
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 354
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 355
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 356
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 357
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v2

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 358
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 359
    iput-object p10, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 361
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 367
    iget v2, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p7, v2, :cond_0

    iget-wide v2, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v2, p8, v2

    if-nez v2, :cond_0

    .line 368
    invoke-static {p8, p9}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 373
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public focusSearchClientThread(JIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 4
    .param p1, "accessibilityNodeId"    # J
    .param p3, "direction"    # I
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "interogatingPid"    # I
    .param p8, "interrogatingTid"    # J
    .param p10, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 459
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 460
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    .line 461
    iput p6, v1, Landroid/os/Message;->arg1:I

    .line 462
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 464
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 465
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 466
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 467
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 468
    iput-object p10, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 470
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 476
    iget v2, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p7, v2, :cond_0

    iget-wide v2, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v2, p8, v2

    if-nez v2, :cond_0

    .line 477
    invoke-static {p8, p9}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 482
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public performAccessibilityActionClientThread(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 4
    .param p1, "accessibilityNodeId"    # J
    .param p3, "action"    # I
    .param p4, "arguments"    # Landroid/os/Bundle;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interogatingPid"    # I
    .param p9, "interrogatingTid"    # J

    .prologue
    .line 533
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 534
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 535
    iput p7, v1, Landroid/os/Message;->arg1:I

    .line 536
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 538
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 539
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v2

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 540
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 541
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 542
    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 543
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 545
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 551
    iget v2, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p8, v2, :cond_0

    iget-wide v2, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v2, p9, v2

    if-nez v2, :cond_0

    .line 552
    invoke-static {p9, p10}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 557
    :goto_0
    return-void

    .line 555
    :cond_0
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
