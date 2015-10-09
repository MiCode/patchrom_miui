.class public Landroid/view/LayoutInflaterMap;
.super Ljava/lang/Object;
.source "LayoutInflaterMap.java"


# static fields
.field static sLayoutMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final sLayoutPairs:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/LayoutInflaterMap;->sLayoutPairs:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x11030016
        0x11030006
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildLayoutMap(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    sget-object v2, Landroid/view/LayoutInflaterMap;->sLayoutMap:Landroid/util/SparseArray;

    if-eqz v2, :cond_0

    .line 40
    :goto_0
    return-void

    .line 30
    :cond_0
    const-class v3, Landroid/view/LayoutInflaterMap;

    monitor-enter v3

    .line 31
    :try_start_0
    sget-object v2, Landroid/view/LayoutInflaterMap;->sLayoutMap:Landroid/util/SparseArray;

    if-nez v2, :cond_2

    .line 32
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Landroid/view/LayoutInflaterMap;->sLayoutMap:Landroid/util/SparseArray;

    .line 33
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Landroid/view/LayoutInflaterMap;->sLayoutPairs:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 34
    sget-object v2, Landroid/view/LayoutInflaterMap;->sLayoutPairs:[I

    aget v2, v2, v0

    invoke-static {v2}, Landroid/view/LayoutInflaterMap;->needResolveReference(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v4, Landroid/view/LayoutInflaterMap;->sLayoutPairs:[I

    aget v4, v4, v0

    invoke-static {v2, v4}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/res/Resources;I)I

    move-result v1

    .line 36
    .local v1, "index":I
    :goto_2
    sget-object v2, Landroid/view/LayoutInflaterMap;->sLayoutMap:Landroid/util/SparseArray;

    sget-object v4, Landroid/view/LayoutInflaterMap;->sLayoutPairs:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 34
    .end local v1    # "index":I
    :cond_1
    sget-object v2, Landroid/view/LayoutInflaterMap;->sLayoutPairs:[I

    aget v1, v2, v0

    goto :goto_2

    .line 39
    .end local v0    # "i":I
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static getResourceId(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resource"    # I

    .prologue
    .line 43
    move v1, p1

    .line 44
    .local v1, "newResource":I
    invoke-static {p0}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    invoke-static {p0}, Landroid/view/LayoutInflaterMap;->buildLayoutMap(Landroid/content/Context;)V

    .line 46
    sget-object v2, Landroid/view/LayoutInflaterMap;->sLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 47
    .local v0, "layout":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 52
    .end local v0    # "layout":Ljava/lang/Integer;
    :cond_0
    return v1
.end method

.method static needResolveReference(I)Z
    .locals 2
    .param p0, "layoutId"    # I

    .prologue
    .line 22
    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    const/high16 v1, 0x1000000

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
