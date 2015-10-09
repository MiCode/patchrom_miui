.class public Landroid/util/Pools$SimplePool;
.super Ljava/lang/Object;
.source "Pools.java"

# interfaces
.implements Landroid/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimplePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/util/Pools$Pool",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mPool:[Ljava/lang/Object;

.field private mPoolSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxPoolSize"    # I

    .prologue
    .line 89
    .local p0, "this":Landroid/util/Pools$SimplePool;, "Landroid/util/Pools$SimplePool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    if-gtz p1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The max pool size must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    .line 94
    return-void
.end method

.method private isInPool(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Landroid/util/Pools$SimplePool;, "Landroid/util/Pools$SimplePool<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    if-ge v0, v1, :cond_1

    .line 124
    iget-object v1, p0, Landroid/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 125
    const/4 v1, 0x1

    .line 128
    :goto_1
    return v1

    .line 123
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/util/Pools$SimplePool;, "Landroid/util/Pools$SimplePool<TT;>;"
    const/4 v2, 0x0

    .line 99
    iget v3, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    if-lez v3, :cond_0

    .line 100
    iget v3, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    add-int/lit8 v1, v3, -0x1

    .line 101
    .local v1, "lastPooledIndex":I
    iget-object v3, p0, Landroid/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aget-object v0, v3, v1

    .line 102
    .local v0, "instance":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Landroid/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 103
    iget v2, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    .line 106
    .end local v0    # "instance":Ljava/lang/Object;, "TT;"
    .end local v1    # "lastPooledIndex":I
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v2

    goto :goto_0
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Landroid/util/Pools$SimplePool;, "Landroid/util/Pools$SimplePool<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Landroid/util/Pools$SimplePool;->isInPool(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already in the pool!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    iget v0, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    iget-object v1, p0, Landroid/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 115
    iget-object v0, p0, Landroid/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    iget v1, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    aput-object p1, v0, v1

    .line 116
    iget v0, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I

    .line 117
    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
