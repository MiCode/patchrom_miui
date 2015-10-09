.class public Landroid/os/PerformanceCollector;
.super Ljava/lang/Object;
.source "PerformanceCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PerformanceCollector$PerformanceResultsWriter;
    }
.end annotation


# static fields
.field public static final METRIC_KEY_CPU_TIME:Ljava/lang/String; = "cpu_time"

.field public static final METRIC_KEY_EXECUTION_TIME:Ljava/lang/String; = "execution_time"

.field public static final METRIC_KEY_GC_INVOCATION_COUNT:Ljava/lang/String; = "gc_invocation_count"

.field public static final METRIC_KEY_GLOBAL_ALLOC_COUNT:Ljava/lang/String; = "global_alloc_count"

.field public static final METRIC_KEY_GLOBAL_ALLOC_SIZE:Ljava/lang/String; = "global_alloc_size"

.field public static final METRIC_KEY_GLOBAL_FREED_COUNT:Ljava/lang/String; = "global_freed_count"

.field public static final METRIC_KEY_GLOBAL_FREED_SIZE:Ljava/lang/String; = "global_freed_size"

.field public static final METRIC_KEY_ITERATIONS:Ljava/lang/String; = "iterations"

.field public static final METRIC_KEY_JAVA_ALLOCATED:Ljava/lang/String; = "java_allocated"

.field public static final METRIC_KEY_JAVA_FREE:Ljava/lang/String; = "java_free"

.field public static final METRIC_KEY_JAVA_PRIVATE_DIRTY:Ljava/lang/String; = "java_private_dirty"

.field public static final METRIC_KEY_JAVA_PSS:Ljava/lang/String; = "java_pss"

.field public static final METRIC_KEY_JAVA_SHARED_DIRTY:Ljava/lang/String; = "java_shared_dirty"

.field public static final METRIC_KEY_JAVA_SIZE:Ljava/lang/String; = "java_size"

.field public static final METRIC_KEY_LABEL:Ljava/lang/String; = "label"

.field public static final METRIC_KEY_NATIVE_ALLOCATED:Ljava/lang/String; = "native_allocated"

.field public static final METRIC_KEY_NATIVE_FREE:Ljava/lang/String; = "native_free"

.field public static final METRIC_KEY_NATIVE_PRIVATE_DIRTY:Ljava/lang/String; = "native_private_dirty"

.field public static final METRIC_KEY_NATIVE_PSS:Ljava/lang/String; = "native_pss"

.field public static final METRIC_KEY_NATIVE_SHARED_DIRTY:Ljava/lang/String; = "native_shared_dirty"

.field public static final METRIC_KEY_NATIVE_SIZE:Ljava/lang/String; = "native_size"

.field public static final METRIC_KEY_OTHER_PRIVATE_DIRTY:Ljava/lang/String; = "other_private_dirty"

.field public static final METRIC_KEY_OTHER_PSS:Ljava/lang/String; = "other_pss"

.field public static final METRIC_KEY_OTHER_SHARED_DIRTY:Ljava/lang/String; = "other_shared_dirty"

.field public static final METRIC_KEY_PRE_RECEIVED_TRANSACTIONS:Ljava/lang/String; = "pre_received_transactions"

.field public static final METRIC_KEY_PRE_SENT_TRANSACTIONS:Ljava/lang/String; = "pre_sent_transactions"

.field public static final METRIC_KEY_RECEIVED_TRANSACTIONS:Ljava/lang/String; = "received_transactions"

.field public static final METRIC_KEY_SENT_TRANSACTIONS:Ljava/lang/String; = "sent_transactions"


# instance fields
.field private mCpuTime:J

.field private mExecTime:J

.field private mPerfMeasurement:Landroid/os/Bundle;

.field private mPerfSnapshot:Landroid/os/Bundle;

.field private mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

.field private mSnapshotCpuTime:J

.field private mSnapshotExecTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    return-void
.end method

.method public constructor <init>(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V
    .locals 0
    .param p1, "writer"    # Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    invoke-virtual {p0, p1}, Landroid/os/PerformanceCollector;->setPerformanceResultsWriter(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V

    .line 293
    return-void
.end method

.method private endPerformanceSnapshot()V
    .locals 26

    .prologue
    .line 483
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/os/PerformanceCollector;->mSnapshotCpuTime:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/os/PerformanceCollector;->mSnapshotCpuTime:J

    .line 484
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/os/PerformanceCollector;->mSnapshotExecTime:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/os/PerformanceCollector;->mSnapshotExecTime:J

    .line 486
    invoke-static {}, Landroid/os/PerformanceCollector;->stopAllocCounting()V

    .line 488
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v22

    const-wide/16 v24, 0x400

    div-long v19, v22, v24

    .line 489
    .local v19, "nativeMax":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v22

    const-wide/16 v24, 0x400

    div-long v15, v22, v24

    .line 490
    .local v15, "nativeAllocated":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v22

    const-wide/16 v24, 0x400

    div-long v17, v22, v24

    .line 492
    .local v17, "nativeFree":J
    new-instance v14, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v14}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 493
    .local v14, "memInfo":Landroid/os/Debug$MemoryInfo;
    invoke-static {v14}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 495
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v21

    .line 497
    .local v21, "runtime":Ljava/lang/Runtime;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v22

    const-wide/16 v24, 0x400

    div-long v10, v22, v24

    .line 498
    .local v10, "dalvikMax":J
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v22

    const-wide/16 v24, 0x400

    div-long v8, v22, v24

    .line 499
    .local v8, "dalvikFree":J
    sub-long v6, v10, v8

    .line 502
    .local v6, "dalvikAllocated":J
    invoke-static {}, Landroid/os/PerformanceCollector;->getBinderCounts()Landroid/os/Bundle;

    move-result-object v5

    .line 503
    .local v5, "binderCounts":Landroid/os/Bundle;
    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 504
    .local v13, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    move-object/from16 v22, v0

    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v23

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    invoke-virtual {v0, v13, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 508
    .end local v13    # "key":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/PerformanceCollector;->getAllocCounts()Landroid/os/Bundle;

    move-result-object v4

    .line 509
    .local v4, "allocCounts":Landroid/os/Bundle;
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 510
    .restart local v13    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    move-object/from16 v22, v0

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v23

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    invoke-virtual {v0, v13, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 513
    .end local v13    # "key":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string v23, "execution_time"

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/os/PerformanceCollector;->mSnapshotExecTime:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v22 .. v25}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string v23, "cpu_time"

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/os/PerformanceCollector;->mSnapshotCpuTime:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v22 .. v25}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string/jumbo v23, "native_size"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string/jumbo v23, "native_allocated"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-wide v2, v15

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string/jumbo v23, "native_free"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string/jumbo v23, "native_pss"

    iget v0, v14, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-virtual/range {v22 .. v25}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string/jumbo v23, "native_private_dirty"

    iget v0, v14, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-virtual/range {v22 .. v25}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string/jumbo v23, "native_shared_dirty"

    iget v0, v14, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-virtual/range {v22 .. v25}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string v23, "java_size"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string v23, "java_allocated"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string v23, "java_free"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string v23, "java_pss"

    iget v0, v14, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-virtual/range {v22 .. v25}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string v23, "java_private_dirty"

    iget v0, v14, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-virtual/range {v22 .. v25}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string v23, "java_shared_dirty"

    iget v0, v14, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-virtual/range {v22 .. v25}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string/jumbo v23, "other_pss"

    iget v0, v14, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-virtual/range {v22 .. v25}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string/jumbo v23, "other_private_dirty"

    iget v0, v14, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-virtual/range {v22 .. v25}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string/jumbo v23, "other_shared_dirty"

    iget v0, v14, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-virtual/range {v22 .. v25}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 533
    return-void
.end method

.method private static getAllocCounts()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 567
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 568
    .local v0, "results":Landroid/os/Bundle;
    const-string v1, "global_alloc_count"

    invoke-static {}, Landroid/os/Debug;->getGlobalAllocCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 569
    const-string v1, "global_alloc_size"

    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 570
    const-string v1, "global_freed_count"

    invoke-static {}, Landroid/os/Debug;->getGlobalFreedCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 571
    const-string v1, "global_freed_size"

    invoke-static {}, Landroid/os/Debug;->getGlobalFreedSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 572
    const-string v1, "gc_invocation_count"

    invoke-static {}, Landroid/os/Debug;->getGlobalGcInvocationCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 573
    return-object v0
.end method

.method private static getBinderCounts()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 582
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 583
    .local v0, "results":Landroid/os/Bundle;
    const-string/jumbo v1, "sent_transactions"

    invoke-static {}, Landroid/os/Debug;->getBinderSentTransactions()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 584
    const-string/jumbo v1, "received_transactions"

    invoke-static {}, Landroid/os/Debug;->getBinderReceivedTransactions()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 585
    return-object v0
.end method

.method private static startAllocCounting()V
    .locals 1

    .prologue
    .line 543
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 544
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 545
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 547
    invoke-static {}, Landroid/os/Debug;->resetAllCounts()V

    .line 550
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 551
    return-void
.end method

.method private startPerformanceSnapshot()V
    .locals 7

    .prologue
    .line 456
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    .line 459
    invoke-static {}, Landroid/os/PerformanceCollector;->getBinderCounts()Landroid/os/Bundle;

    move-result-object v0

    .line 460
    .local v0, "binderCounts":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 461
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pre_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 467
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/PerformanceCollector;->startAllocCounting()V

    .line 472
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/os/PerformanceCollector;->mSnapshotExecTime:J

    .line 473
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/os/PerformanceCollector;->mSnapshotCpuTime:J

    .line 474
    return-void
.end method

.method private static stopAllocCounting()V
    .locals 1

    .prologue
    .line 557
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 558
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 559
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 560
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 561
    return-void
.end method


# virtual methods
.method public addIteration(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 388
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/os/PerformanceCollector;->mCpuTime:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroid/os/PerformanceCollector;->mCpuTime:J

    .line 389
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/os/PerformanceCollector;->mExecTime:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroid/os/PerformanceCollector;->mExecTime:J

    .line 391
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 392
    .local v0, "iteration":Landroid/os/Bundle;
    const-string v1, "label"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v1, "execution_time"

    iget-wide v2, p0, Landroid/os/PerformanceCollector;->mExecTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 394
    const-string v1, "cpu_time"

    iget-wide v2, p0, Landroid/os/PerformanceCollector;->mCpuTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 395
    iget-object v1, p0, Landroid/os/PerformanceCollector;->mPerfMeasurement:Landroid/os/Bundle;

    const-string v2, "iterations"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/PerformanceCollector;->mExecTime:J

    .line 398
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/PerformanceCollector;->mCpuTime:J

    .line 399
    return-object v0
.end method

.method public addMeasurement(Ljava/lang/String;F)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 436
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    invoke-interface {v0, p1, p2}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeMeasurement(Ljava/lang/String;F)V

    .line 438
    :cond_0
    return-void
.end method

.method public addMeasurement(Ljava/lang/String;J)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 425
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeMeasurement(Ljava/lang/String;J)V

    .line 427
    :cond_0
    return-void
.end method

.method public addMeasurement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 447
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    invoke-interface {v0, p1, p2}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeMeasurement(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_0
    return-void
.end method

.method public beginSnapshot(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 306
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    invoke-interface {v0, p1}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeBeginSnapshot(Ljava/lang/String;)V

    .line 308
    :cond_0
    invoke-direct {p0}, Landroid/os/PerformanceCollector;->startPerformanceSnapshot()V

    .line 309
    return-void
.end method

.method public endSnapshot()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 350
    invoke-direct {p0}, Landroid/os/PerformanceCollector;->endPerformanceSnapshot()V

    .line 351
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    iget-object v1, p0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeEndSnapshot(Landroid/os/Bundle;)V

    .line 353
    :cond_0
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfSnapshot:Landroid/os/Bundle;

    return-object v0
.end method

.method public setPerformanceResultsWriter(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V
    .locals 0
    .param p1, "writer"    # Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    .prologue
    .line 296
    iput-object p1, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    .line 297
    return-void
.end method

.method public startTiming(Ljava/lang/String;)V
    .locals 3
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 363
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    invoke-interface {v0, p1}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeStartTiming(Ljava/lang/String;)V

    .line 365
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/os/PerformanceCollector;->mPerfMeasurement:Landroid/os/Bundle;

    .line 366
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfMeasurement:Landroid/os/Bundle;

    const-string v1, "iterations"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 368
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerformanceCollector;->mExecTime:J

    .line 369
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerformanceCollector;->mCpuTime:J

    .line 370
    return-void
.end method

.method public stopTiming(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Landroid/os/PerformanceCollector;->addIteration(Ljava/lang/String;)Landroid/os/Bundle;

    .line 413
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    iget-object v1, p0, Landroid/os/PerformanceCollector;->mPerfMeasurement:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Landroid/os/PerformanceCollector$PerformanceResultsWriter;->writeStopTiming(Landroid/os/Bundle;)V

    .line 415
    :cond_0
    iget-object v0, p0, Landroid/os/PerformanceCollector;->mPerfMeasurement:Landroid/os/Bundle;

    return-object v0
.end method
