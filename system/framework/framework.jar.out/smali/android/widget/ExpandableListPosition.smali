.class Landroid/widget/ExpandableListPosition;
.super Ljava/lang/Object;
.source "ExpandableListPosition.java"


# static fields
.field public static final CHILD:I = 0x1

.field public static final GROUP:I = 0x2

.field private static final MAX_POOL_SIZE:I = 0x5

.field private static sPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ExpandableListPosition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public childPos:I

.field flatListPos:I

.field public groupPos:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Landroid/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method private static getRecycledOrCreate()Landroid/widget/ExpandableListPosition;
    .locals 4

    .prologue
    .line 117
    sget-object v2, Landroid/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    monitor-enter v2

    .line 118
    :try_start_0
    sget-object v1, Landroid/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 119
    sget-object v1, Landroid/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListPosition;

    .line 123
    .local v0, "elp":Landroid/widget/ExpandableListPosition;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-direct {v0}, Landroid/widget/ExpandableListPosition;->resetState()V

    .line 125
    .end local v0    # "elp":Landroid/widget/ExpandableListPosition;
    :goto_0
    return-object v0

    .line 121
    :cond_0
    :try_start_1
    new-instance v0, Landroid/widget/ExpandableListPosition;

    invoke-direct {v0}, Landroid/widget/ExpandableListPosition;-><init>()V

    monitor-exit v2

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static obtain(IIII)Landroid/widget/ExpandableListPosition;
    .locals 1
    .param p0, "type"    # I
    .param p1, "groupPos"    # I
    .param p2, "childPos"    # I
    .param p3, "flatListPos"    # I

    .prologue
    .line 107
    invoke-static {}, Landroid/widget/ExpandableListPosition;->getRecycledOrCreate()Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 108
    .local v0, "elp":Landroid/widget/ExpandableListPosition;
    iput p0, v0, Landroid/widget/ExpandableListPosition;->type:I

    .line 109
    iput p1, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 110
    iput p2, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    .line 111
    iput p3, v0, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 112
    return-object v0
.end method

.method static obtainChildPosition(II)Landroid/widget/ExpandableListPosition;
    .locals 2
    .param p0, "groupPosition"    # I
    .param p1, "childPosition"    # I

    .prologue
    .line 86
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    return-object v0
.end method

.method static obtainGroupPosition(I)Landroid/widget/ExpandableListPosition;
    .locals 2
    .param p0, "groupPosition"    # I

    .prologue
    const/4 v1, 0x0

    .line 82
    const/4 v0, 0x2

    invoke-static {v0, p0, v1, v1}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    return-object v0
.end method

.method static obtainPosition(J)Landroid/widget/ExpandableListPosition;
    .locals 4
    .param p0, "packedPosition"    # J

    .prologue
    const/4 v3, 0x1

    .line 90
    const-wide v1, 0xffffffffL

    cmp-long v1, p0, v1

    if-nez v1, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 103
    :goto_0
    return-object v0

    .line 94
    :cond_0
    invoke-static {}, Landroid/widget/ExpandableListPosition;->getRecycledOrCreate()Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 95
    .local v0, "elp":Landroid/widget/ExpandableListPosition;
    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    iput v1, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 96
    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 98
    iput v3, v0, Landroid/widget/ExpandableListPosition;->type:I

    .line 99
    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v1

    iput v1, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    goto :goto_0

    .line 101
    :cond_1
    const/4 v1, 0x2

    iput v1, v0, Landroid/widget/ExpandableListPosition;->type:I

    goto :goto_0
.end method

.method private resetState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    iput v0, p0, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 68
    iput v0, p0, Landroid/widget/ExpandableListPosition;->childPos:I

    .line 69
    iput v0, p0, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 70
    iput v0, p0, Landroid/widget/ExpandableListPosition;->type:I

    .line 71
    return-void
.end method


# virtual methods
.method getPackedPosition()J
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v1, p0, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v0

    .line 78
    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-static {v0}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 133
    sget-object v1, Landroid/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    monitor-enter v1

    .line 134
    :try_start_0
    sget-object v0, Landroid/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 135
    sget-object v0, Landroid/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_0
    monitor-exit v1

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
