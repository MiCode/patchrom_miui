.class public final Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RangeInfo"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa

.field public static final RANGE_TYPE_FLOAT:I = 0x1

.field public static final RANGE_TYPE_INT:I = 0x0

.field public static final RANGE_TYPE_PERCENT:I = 0x2

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrent:F

.field private mMax:F

.field private mMin:F

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2555
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>(IFFF)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "min"    # F
    .param p3, "max"    # F
    .param p4, "current"    # F

    .prologue
    .line 2595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2596
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mType:I

    .line 2597
    iput p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMin:F

    .line 2598
    iput p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMax:F

    .line 2599
    iput p4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mCurrent:F

    .line 2600
    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2651
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mType:I

    .line 2652
    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMin:F

    .line 2653
    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMax:F

    .line 2654
    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mCurrent:F

    .line 2655
    return-void
.end method

.method public static obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    .locals 2
    .param p0, "type"    # I
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "current"    # F

    .prologue
    .line 2583
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 2584
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    if-eqz v0, :cond_0

    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    :goto_0
    return-object v0

    .restart local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    :cond_0
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;-><init>(IFFF)V

    goto :goto_0
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    .locals 4
    .param p0, "other"    # Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .prologue
    .line 2571
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mType:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMin:F

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMax:F

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mCurrent:F

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCurrent()F
    .locals 1

    .prologue
    .line 2639
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mCurrent:F

    return v0
.end method

.method public getMax()F
    .locals 1

    .prologue
    .line 2630
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMax:F

    return v0
.end method

.method public getMin()F
    .locals 1

    .prologue
    .line 2621
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMin:F

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 2612
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mType:I

    return v0
.end method

.method recycle()V
    .locals 1

    .prologue
    .line 2646
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->clear()V

    .line 2647
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 2648
    return-void
.end method
