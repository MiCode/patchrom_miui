.class public final Landroid/app/SharedPreferencesImpl$EditorImpl;
.super Ljava/lang/Object;
.source "SharedPreferencesImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SharedPreferencesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EditorImpl"
.end annotation


# instance fields
.field private mClear:Z

.field private final mModified:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/app/SharedPreferencesImpl;


# direct methods
.method public constructor <init>(Landroid/app/SharedPreferencesImpl;)V
    .locals 1

    .prologue
    .line 303
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mClear:Z

    return-void
.end method

.method static synthetic access$600(Landroid/app/SharedPreferencesImpl$EditorImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl$EditorImpl;
    .param p1, "x1"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    .prologue
    .line 303
    invoke-direct {p0, p1}, Landroid/app/SharedPreferencesImpl$EditorImpl;->notifyListeners(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    return-void
.end method

.method private commitToMemory()Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    .locals 13

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x1

    .line 390
    new-instance v6, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;-><init>(Landroid/app/SharedPreferencesImpl$1;)V

    .line 391
    .local v6, "mcr":Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    iget-object v9, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    monitor-enter v9

    .line 395
    :try_start_0
    iget-object v10, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    # getter for: Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I
    invoke-static {v10}, Landroid/app/SharedPreferencesImpl;->access$300(Landroid/app/SharedPreferencesImpl;)I

    move-result v10

    if-lez v10, :cond_0

    .line 400
    iget-object v10, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    new-instance v11, Ljava/util/HashMap;

    iget-object v12, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    # getter for: Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v12}, Landroid/app/SharedPreferencesImpl;->access$400(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    # setter for: Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v10, v11}, Landroid/app/SharedPreferencesImpl;->access$402(Landroid/app/SharedPreferencesImpl;Ljava/util/Map;)Ljava/util/Map;

    .line 402
    :cond_0
    iget-object v10, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    # getter for: Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v10}, Landroid/app/SharedPreferencesImpl;->access$400(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v10

    iput-object v10, v6, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->mapToWriteToDisk:Ljava/util/Map;

    .line 403
    iget-object v10, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    # operator++ for: Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I
    invoke-static {v10}, Landroid/app/SharedPreferencesImpl;->access$308(Landroid/app/SharedPreferencesImpl;)I

    .line 405
    iget-object v10, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    # getter for: Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;
    invoke-static {v10}, Landroid/app/SharedPreferencesImpl;->access$500(Landroid/app/SharedPreferencesImpl;)Ljava/util/WeakHashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/WeakHashMap;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 406
    .local v2, "hasListeners":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 407
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v6, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    .line 408
    new-instance v8, Ljava/util/HashSet;

    iget-object v10, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    # getter for: Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;
    invoke-static {v10}, Landroid/app/SharedPreferencesImpl;->access$500(Landroid/app/SharedPreferencesImpl;)Ljava/util/WeakHashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v8, v6, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->listeners:Ljava/util/Set;

    .line 412
    :cond_1
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 413
    :try_start_1
    iget-boolean v8, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mClear:Z

    if-eqz v8, :cond_3

    .line 414
    iget-object v8, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    # getter for: Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v8}, Landroid/app/SharedPreferencesImpl;->access$400(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 415
    const/4 v8, 0x1

    iput-boolean v8, v6, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->changesMade:Z

    .line 416
    iget-object v8, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    # getter for: Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v8}, Landroid/app/SharedPreferencesImpl;->access$400(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 418
    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mClear:Z

    .line 421
    :cond_3
    iget-object v8, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 422
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 423
    .local v5, "k":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 424
    .local v7, "v":Ljava/lang/Object;
    if-ne v7, p0, :cond_6

    .line 425
    iget-object v8, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    # getter for: Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v8}, Landroid/app/SharedPreferencesImpl;->access$400(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 428
    iget-object v8, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    # getter for: Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v8}, Landroid/app/SharedPreferencesImpl;->access$400(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    :goto_2
    const/4 v8, 0x1

    iput-boolean v8, v6, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->changesMade:Z

    .line 441
    if-eqz v2, :cond_4

    .line 442
    iget-object v8, v6, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 447
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "k":Ljava/lang/String;
    .end local v7    # "v":Ljava/lang/Object;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8

    .line 448
    .end local v2    # "hasListeners":Z
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    :cond_5
    move v2, v8

    .line 405
    goto/16 :goto_0

    .line 430
    .restart local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "hasListeners":Z
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "k":Ljava/lang/String;
    .restart local v7    # "v":Ljava/lang/Object;
    :cond_6
    const/4 v4, 0x0

    .line 431
    .local v4, "isSame":Z
    :try_start_3
    iget-object v8, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    # getter for: Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v8}, Landroid/app/SharedPreferencesImpl;->access$400(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 432
    iget-object v8, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    # getter for: Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v8}, Landroid/app/SharedPreferencesImpl;->access$400(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 433
    .local v1, "existingValue":Ljava/lang/Object;
    if-eqz v1, :cond_7

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 437
    .end local v1    # "existingValue":Ljava/lang/Object;
    :cond_7
    iget-object v8, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    # getter for: Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v8}, Landroid/app/SharedPreferencesImpl;->access$400(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 446
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "isSame":Z
    .end local v5    # "k":Ljava/lang/String;
    .end local v7    # "v":Ljava/lang/Object;
    :cond_8
    iget-object v8, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 447
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 448
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 449
    return-object v6
.end method

.method private notifyListeners(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V
    .locals 6
    .param p1, "mcr"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    .prologue
    .line 466
    iget-object v4, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->listeners:Ljava/util/Set;

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v4, v5, :cond_4

    .line 471
    iget-object v4, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 472
    iget-object v4, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 473
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->listeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 474
    .local v3, "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    if-eqz v3, :cond_2

    .line 475
    iget-object v4, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_2

    .line 471
    .end local v3    # "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 481
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    :cond_4
    sget-object v4, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    new-instance v5, Landroid/app/SharedPreferencesImpl$EditorImpl$3;

    invoke-direct {v5, p0, p1}, Landroid/app/SharedPreferencesImpl$EditorImpl$3;-><init>(Landroid/app/SharedPreferencesImpl$EditorImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public apply()V
    .locals 4

    .prologue
    .line 360
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl$EditorImpl;->commitToMemory()Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    move-result-object v1

    .line 361
    .local v1, "mcr":Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    new-instance v0, Landroid/app/SharedPreferencesImpl$EditorImpl$1;

    invoke-direct {v0, p0, v1}, Landroid/app/SharedPreferencesImpl$EditorImpl$1;-><init>(Landroid/app/SharedPreferencesImpl$EditorImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    .line 370
    .local v0, "awaitCommit":Ljava/lang/Runnable;
    invoke-static {v0}, Landroid/app/QueuedWork;->add(Ljava/lang/Runnable;)V

    .line 372
    new-instance v2, Landroid/app/SharedPreferencesImpl$EditorImpl$2;

    invoke-direct {v2, p0, v0}, Landroid/app/SharedPreferencesImpl$EditorImpl$2;-><init>(Landroid/app/SharedPreferencesImpl$EditorImpl;Ljava/lang/Runnable;)V

    .line 379
    .local v2, "postWriteRunnable":Ljava/lang/Runnable;
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    # invokes: Landroid/app/SharedPreferencesImpl;->enqueueDiskWrite(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    invoke-static {v3, v1, v2}, Landroid/app/SharedPreferencesImpl;->access$100(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    .line 385
    invoke-direct {p0, v1}, Landroid/app/SharedPreferencesImpl$EditorImpl;->notifyListeners(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    .line 386
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 353
    monitor-enter p0

    .line 354
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mClear:Z

    .line 355
    monitor-exit p0

    return-object p0

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public commit()Z
    .locals 4

    .prologue
    .line 453
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl$EditorImpl;->commitToMemory()Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    move-result-object v1

    .line 454
    .local v1, "mcr":Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    iget-object v2, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/SharedPreferencesImpl;

    const/4 v3, 0x0

    # invokes: Landroid/app/SharedPreferencesImpl;->enqueueDiskWrite(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    invoke-static {v2, v1, v3}, Landroid/app/SharedPreferencesImpl;->access$100(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    .line 457
    :try_start_0
    iget-object v2, v1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->writtenToDiskLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    invoke-direct {p0, v1}, Landroid/app/SharedPreferencesImpl$EditorImpl;->notifyListeners(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    .line 462
    iget-boolean v2, v1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->writeToDiskResult:Z

    :goto_0
    return v2

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 339
    monitor-enter p0

    .line 340
    :try_start_0
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    monitor-exit p0

    return-object p0

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 333
    monitor-enter p0

    .line 334
    :try_start_0
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    monitor-exit p0

    return-object p0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 321
    monitor-enter p0

    .line 322
    :try_start_0
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    monitor-exit p0

    return-object p0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 327
    monitor-enter p0

    .line 328
    :try_start_0
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    monitor-exit p0

    return-object p0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 308
    monitor-enter p0

    .line 309
    :try_start_0
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    monitor-exit p0

    return-object p0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .prologue
    .line 314
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    .line 315
    :try_start_0
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    monitor-exit p0

    return-object p0

    .line 315
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 346
    monitor-enter p0

    .line 347
    :try_start_0
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    monitor-exit p0

    return-object p0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
