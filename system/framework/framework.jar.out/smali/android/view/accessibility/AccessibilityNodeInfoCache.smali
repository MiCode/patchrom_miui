.class public Landroid/view/accessibility/AccessibilityNodeInfoCache;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCache.java"


# static fields
.field private static final CHECK_INTEGRITY_IF_DEBUGGABLE_BUILD:Z = true

.field private static final DEBUG:Z = false

.field private static final ENABLED:Z = true

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mCacheImpl:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mWindowId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Landroid/view/accessibility/AccessibilityNodeInfoCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mLock:Ljava/lang/Object;

    .line 54
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    .line 58
    return-void
.end method

.method private checkIntegrity()V
    .locals 22

    .prologue
    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 257
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/LongSparseArray;->size()I

    move-result v18

    if-gtz v18, :cond_0

    .line 258
    monitor-exit v19

    .line 328
    :goto_0
    return-void

    .line 263
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 264
    .local v15, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object v14, v15

    .line 265
    .local v14, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_1
    if-eqz v14, :cond_1

    .line 266
    move-object v15, v14

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    move-object/from16 v18, v0

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    check-cast v14, Landroid/view/accessibility/AccessibilityNodeInfo;

    .restart local v14    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_1

    .line 271
    :cond_1
    invoke-virtual {v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v17

    .line 272
    .local v17, "windowId":I
    const/4 v3, 0x0

    .line 273
    .local v3, "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v13, 0x0

    .line 274
    .local v13, "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 275
    .local v16, "seen":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 276
    .local v10, "fringe":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v10, v15}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_2
    invoke-interface {v10}, Ljava/util/Queue;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_9

    .line 279
    invoke-interface {v10}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 281
    .local v9, "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 282
    sget-object v18, Landroid/view/accessibility/AccessibilityNodeInfoCache;->LOG_TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Duplicate node: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    monitor-exit v19

    goto :goto_0

    .line 327
    .end local v3    # "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v9    # "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v10    # "fringe":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v13    # "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v14    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v15    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v16    # "seen":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v17    # "windowId":I
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 287
    .restart local v3    # "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v9    # "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v10    # "fringe":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v13    # "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v14    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v15    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v16    # "seen":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v17    # "windowId":I
    :cond_3
    :try_start_1
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 288
    if-eqz v3, :cond_7

    .line 289
    sget-object v18, Landroid/view/accessibility/AccessibilityNodeInfoCache;->LOG_TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Duplicate accessibility focus:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_4
    :goto_2
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 297
    if-eqz v13, :cond_8

    .line 298
    sget-object v18, Landroid/view/accessibility/AccessibilityNodeInfoCache;->LOG_TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Duplicate input focus: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_5
    :goto_3
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/SparseLongArray;

    move-result-object v8

    .line 305
    .local v8, "childIds":Landroid/util/SparseLongArray;
    invoke-virtual {v8}, Landroid/util/SparseLongArray;->size()I

    move-result v5

    .line 306
    .local v5, "childCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    if-ge v11, v5, :cond_2

    .line 307
    invoke-virtual {v8, v11}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v6

    .line 308
    .local v6, "childId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 309
    .local v4, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v4, :cond_6

    .line 310
    invoke-interface {v10, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 291
    .end local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v5    # "childCount":I
    .end local v6    # "childId":J
    .end local v8    # "childIds":Landroid/util/SparseLongArray;
    .end local v11    # "i":I
    :cond_7
    move-object v3, v9

    goto :goto_2

    .line 300
    :cond_8
    move-object v13, v9

    goto :goto_3

    .line 316
    .end local v9    # "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_9
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/LongSparseArray;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_c

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 318
    .local v12, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 319
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 320
    sget-object v18, Landroid/view/accessibility/AccessibilityNodeInfoCache;->LOG_TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Disconneced node: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_a
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 322
    :cond_b
    sget-object v18, Landroid/view/accessibility/AccessibilityNodeInfoCache;->LOG_TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Node from: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " not from:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 327
    .end local v12    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_c
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private clearSubTreeLocked(J)V
    .locals 0
    .param p1, "rootNodeId"    # J

    .prologue
    .line 231
    invoke-direct {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfoCache;->clearSubTreeRecursiveLocked(J)V

    .line 232
    return-void
.end method

.method private clearSubTreeRecursiveLocked(J)V
    .locals 7
    .param p1, "rootNodeId"    # J

    .prologue
    .line 235
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    invoke-virtual {v6, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 236
    .local v4, "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v4, :cond_1

    .line 246
    :cond_0
    return-void

    .line 239
    :cond_1
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    invoke-virtual {v6, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 240
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/SparseLongArray;

    move-result-object v3

    .line 241
    .local v3, "childNodeIds":Landroid/util/SparseLongArray;
    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    .line 242
    .local v0, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 243
    invoke-virtual {v3, v5}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v1

    .line 244
    .local v1, "childNodeId":J
    invoke-direct {p0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfoCache;->clearSubTreeRecursiveLocked(J)V

    .line 242
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private refreshCachedNode(J)V
    .locals 3
    .param p1, "sourceId"    # J

    .prologue
    .line 116
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 117
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 119
    .local v0, "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_0

    .line 120
    monitor-exit v2

    .line 129
    :goto_0
    return-void

    .line 123
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    monitor-exit v2

    goto :goto_0

    .line 128
    .end local v0    # "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 127
    .restart local v0    # "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfoCache;->clearSubTreeLocked(J)V

    .line 128
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public add(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 17
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 163
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 168
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v11

    .line 169
    .local v11, "sourceId":J
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    invoke-virtual {v13, v11, v12}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 170
    .local v8, "oldInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v8, :cond_2

    .line 175
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/SparseLongArray;

    move-result-object v7

    .line 176
    .local v7, "oldChildrenIds":Landroid/util/SparseLongArray;
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/SparseLongArray;

    move-result-object v3

    .line 177
    .local v3, "newChildrenIds":Landroid/util/SparseLongArray;
    invoke-virtual {v7}, Landroid/util/SparseLongArray;->size()I

    move-result v4

    .line 178
    .local v4, "oldChildCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 179
    invoke-virtual {v7, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v5

    .line 180
    .local v5, "oldChildId":J
    invoke-virtual {v3, v5, v6}, Landroid/util/SparseLongArray;->indexOfValue(J)I

    move-result v13

    if-gez v13, :cond_0

    .line 181
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfoCache;->clearSubTreeLocked(J)V

    .line 178
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .end local v5    # "oldChildId":J
    :cond_1
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v9

    .line 189
    .local v9, "oldParentId":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v15

    cmp-long v13, v15, v9

    if-eqz v13, :cond_2

    .line 190
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Landroid/view/accessibility/AccessibilityNodeInfoCache;->clearSubTreeLocked(J)V

    .line 196
    .end local v2    # "i":I
    .end local v3    # "newChildrenIds":Landroid/util/SparseLongArray;
    .end local v4    # "oldChildCount":I
    .end local v7    # "oldChildrenIds":Landroid/util/SparseLongArray;
    .end local v9    # "oldParentId":J
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 197
    .local v1, "clone":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    invoke-virtual {v13, v11, v12, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 198
    monitor-exit v14

    .line 200
    return-void

    .line 198
    .end local v1    # "clone":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v8    # "oldInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v11    # "sourceId":J
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 207
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 212
    :try_start_0
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .line 213
    .local v2, "nodeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 214
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 215
    .local v1, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    .end local v1    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_0
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->clear()V

    .line 218
    monitor-exit v4

    .line 220
    return-void

    .line 218
    .end local v0    # "i":I
    .end local v2    # "nodeCount":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public get(J)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3
    .param p1, "accessibilityNodeId"    # J

    .prologue
    .line 139
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 140
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 141
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 144
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 149
    :cond_0
    monitor-exit v2

    return-object v0

    .line 150
    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 69
    .local v0, "eventType":I
    sparse-switch v0, :sswitch_data_0

    .line 106
    :cond_0
    :goto_0
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_1

    .line 107
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeInfoCache;->checkIntegrity()V

    .line 110
    :cond_1
    return-void

    .line 75
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v3

    .line 76
    .local v3, "windowId":I
    iget v4, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mWindowId:I

    if-eq v4, v3, :cond_0

    .line 77
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mWindowId:I

    .line 78
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfoCache;->clear()V

    goto :goto_0

    .line 87
    .end local v3    # "windowId":I
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfoCache;->refreshCachedNode(J)V

    goto :goto_0

    .line 90
    :sswitch_2
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 91
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfoCache;->clearSubTreeLocked(J)V

    .line 92
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 95
    :sswitch_3
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 96
    :try_start_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v1

    .line 97
    .local v1, "sourceId":J
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 99
    invoke-direct {p0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfoCache;->clearSubTreeLocked(J)V

    .line 103
    :goto_1
    monitor-exit v5

    goto :goto_0

    .end local v1    # "sourceId":J
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    .line 101
    .restart local v1    # "sourceId":J
    :cond_2
    :try_start_2
    invoke-direct {p0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfoCache;->refreshCachedNode(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 69
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
        0x80 -> :sswitch_0
        0x100 -> :sswitch_0
        0x400 -> :sswitch_0
        0x800 -> :sswitch_3
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_1
        0x8000 -> :sswitch_1
        0x10000 -> :sswitch_1
    .end sparse-switch
.end method
