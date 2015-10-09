.class final Landroid/os/StrictMode$InstanceTracker;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceTracker"
.end annotation


# static fields
.field private static final sInstanceCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mKlass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6
    .param p1, "instance"    # Ljava/lang/Object;

    .prologue
    .line 2244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2245
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Landroid/os/StrictMode$InstanceTracker;->mKlass:Ljava/lang/Class;

    .line 2247
    sget-object v3, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    monitor-enter v3

    .line 2248
    :try_start_0
    sget-object v2, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    iget-object v4, p0, Landroid/os/StrictMode$InstanceTracker;->mKlass:Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2249
    .local v1, "value":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 2250
    .local v0, "newValue":I
    :goto_0
    sget-object v2, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    iget-object v4, p0, Landroid/os/StrictMode$InstanceTracker;->mKlass:Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2251
    monitor-exit v3

    .line 2252
    return-void

    .line 2249
    .end local v0    # "newValue":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2251
    .end local v1    # "value":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getInstanceCount(Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 2274
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    monitor-enter v2

    .line 2275
    :try_start_0
    sget-object v1, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2276
    .local v0, "value":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2277
    .end local v0    # "value":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected finalize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2257
    :try_start_0
    sget-object v3, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2258
    :try_start_1
    sget-object v2, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    iget-object v4, p0, Landroid/os/StrictMode$InstanceTracker;->mKlass:Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2259
    .local v1, "value":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 2260
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 2261
    .local v0, "newValue":I
    if-lez v0, :cond_1

    .line 2262
    sget-object v2, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    iget-object v4, p0, Landroid/os/StrictMode$InstanceTracker;->mKlass:Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2267
    .end local v0    # "newValue":I
    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2269
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2271
    return-void

    .line 2264
    .restart local v0    # "newValue":I
    :cond_1
    :try_start_2
    sget-object v2, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    iget-object v4, p0, Landroid/os/StrictMode$InstanceTracker;->mKlass:Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2267
    .end local v0    # "newValue":I
    .end local v1    # "value":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2269
    :catchall_1
    move-exception v2

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v2
.end method
