.class public Landroid/util/Pools$SynchronizedPool;
.super Landroid/util/Pools$SimplePool;
.source "Pools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SynchronizedPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/Pools$SimplePool",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxPoolSize"    # I

    .prologue
    .line 148
    .local p0, "this":Landroid/util/Pools$SynchronizedPool;, "Landroid/util/Pools$SynchronizedPool<TT;>;"
    invoke-direct {p0, p1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/util/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;

    .line 149
    return-void
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Landroid/util/Pools$SynchronizedPool;, "Landroid/util/Pools$SynchronizedPool<TT;>;"
    iget-object v1, p0, Landroid/util/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    :try_start_0
    invoke-super {p0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Landroid/util/Pools$SynchronizedPool;, "Landroid/util/Pools$SynchronizedPool<TT;>;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Landroid/util/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    invoke-super {p0, p1}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
