.class public Landroid/widget/ExpandableListConnector$PositionMetadata;
.super Ljava/lang/Object;
.source "ExpandableListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionMetadata"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x5

.field private static sPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ExpandableListConnector$PositionMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public groupInsertIndex:I

.field public groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

.field public position:Landroid/widget/ExpandableListPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 957
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 992
    return-void
.end method

.method private static getRecycledOrCreate()Landroid/widget/ExpandableListConnector$PositionMetadata;
    .locals 4

    .prologue
    .line 1005
    sget-object v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1006
    :try_start_0
    sget-object v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1007
    sget-object v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 1011
    .local v0, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1012
    invoke-direct {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->resetState()V

    .line 1013
    .end local v0    # "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    :goto_0
    return-object v0

    .line 1009
    :cond_0
    :try_start_1
    new-instance v0, Landroid/widget/ExpandableListConnector$PositionMetadata;

    invoke-direct {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;-><init>()V

    monitor-exit v2

    goto :goto_0

    .line 1011
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;
    .locals 2
    .param p0, "flatListPos"    # I
    .param p1, "type"    # I
    .param p2, "groupPos"    # I
    .param p3, "childPos"    # I
    .param p4, "groupMetadata"    # Landroid/widget/ExpandableListConnector$GroupMetadata;
    .param p5, "groupInsertIndex"    # I

    .prologue
    .line 996
    invoke-static {}, Landroid/widget/ExpandableListConnector$PositionMetadata;->getRecycledOrCreate()Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 997
    .local v0, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-static {p1, p2, p3, p0}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 998
    iput-object p4, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 999
    iput p5, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 1000
    return-object v0
.end method

.method private resetState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 980
    iget-object v0, p0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 982
    iput-object v1, p0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 984
    :cond_0
    iput-object v1, p0, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 985
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 986
    return-void
.end method


# virtual methods
.method public isExpanded()Z
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 1017
    invoke-direct {p0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->resetState()V

    .line 1018
    sget-object v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1019
    :try_start_0
    sget-object v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 1020
    sget-object v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1022
    :cond_0
    monitor-exit v1

    .line 1023
    return-void

    .line 1022
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
