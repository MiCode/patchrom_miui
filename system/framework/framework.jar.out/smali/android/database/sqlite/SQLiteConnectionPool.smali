.class public final Landroid/database/sqlite/SQLiteConnectionPool;
.super Ljava/lang/Object;
.source "SQLiteConnectionPool.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;,
        Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CONNECTION_FLAG_INTERACTIVE:I = 0x4

.field public static final CONNECTION_FLAG_PRIMARY_CONNECTION_AFFINITY:I = 0x2

.field public static final CONNECTION_FLAG_READ_ONLY:I = 0x1

.field private static final CONNECTION_POOL_BUSY_MILLIS:J = 0x7530L

.field private static final TAG:Ljava/lang/String; = "SQLiteConnectionPool"


# instance fields
.field private final mAcquiredConnections:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/database/sqlite/SQLiteConnection;",
            "Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvailableNonPrimaryConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

.field private final mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConnectionWaiterPool:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

.field private mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

.field private mIsOpen:Z

.field private final mLock:Ljava/lang/Object;

.field private mMaxConnectionPoolSize:I

.field private mNextConnectionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/database/sqlite/SQLiteConnectionPool;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .locals 1
    .param p1, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    .line 149
    new-instance v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;-><init>(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 150
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSizeLocked()V

    .line 151
    return-void
.end method

.method static synthetic access$000(Landroid/database/sqlite/SQLiteConnectionPool;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteConnectionPool;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V
    .locals 0
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteConnectionPool;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->cancelConnectionWaiterLocked(Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V

    return-void
.end method

.method private cancelConnectionWaiterLocked(Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V
    .locals 3
    .param p1, "waiter"    # Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .prologue
    .line 709
    iget-object v2, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Landroid/database/sqlite/SQLiteConnection;

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    if-eqz v2, :cond_1

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    const/4 v1, 0x0

    .line 716
    .local v1, "predecessor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 717
    .local v0, "current":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :goto_1
    if-eq v0, p1, :cond_3

    .line 718
    sget-boolean v2, Landroid/database/sqlite/SQLiteConnectionPool;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 719
    :cond_2
    move-object v1, v0

    .line 720
    iget-object v0, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_1

    .line 722
    :cond_3
    if-eqz v1, :cond_4

    .line 723
    iget-object v2, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput-object v2, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 729
    :goto_2
    new-instance v2, Landroid/os/OperationCanceledException;

    invoke-direct {v2}, Landroid/os/OperationCanceledException;-><init>()V

    iput-object v2, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    .line 730
    iget-object v2, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 733
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    goto :goto_0

    .line 725
    :cond_4
    iget-object v2, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_2
.end method

.method private closeAvailableConnectionsAndLogExceptionsLocked()V
    .locals 1

    .prologue
    .line 498
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V

    .line 500
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 504
    :cond_0
    return-void
.end method

.method private closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V
    .locals 3

    .prologue
    .line 508
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 509
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 510
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteConnection;

    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 509
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 512
    :cond_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 513
    return-void
.end method

.method private closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V
    .locals 4
    .param p1, "connection"    # Landroid/database/sqlite/SQLiteConnection;

    .prologue
    .line 528
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :goto_0
    return-void

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "SQLiteConnectionPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close connection, its fate is now in the hands of the merciful GC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private closeExcessConnectionsAndLogExceptionsLocked()V
    .locals 4

    .prologue
    .line 517
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 518
    .local v0, "availableCount":I
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "availableCount":I
    .local v1, "availableCount":I
    iget v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    add-int/lit8 v3, v3, -0x1

    if-le v0, v3, :cond_0

    .line 519
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteConnection;

    .line 521
    .local v2, "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    move v0, v1

    .line 522
    .end local v1    # "availableCount":I
    .restart local v0    # "availableCount":I
    goto :goto_0

    .line 523
    .end local v0    # "availableCount":I
    .end local v2    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .restart local v1    # "availableCount":I
    :cond_0
    return-void
.end method

.method private discardAcquiredConnectionsLocked()V
    .locals 1

    .prologue
    .line 537
    sget-object v0, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->markAcquiredConnectionsLocked(Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)V

    .line 538
    return-void
.end method

.method private dispose(Z)V
    .locals 5
    .param p1, "finalized"    # Z

    .prologue
    .line 209
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v1, :cond_1

    .line 210
    if-eqz p1, :cond_0

    .line 211
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 213
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 216
    :cond_1
    if-nez p1, :cond_3

    .line 221
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 222
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    .line 224
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    .line 226
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableConnectionsAndLogExceptionsLocked()V

    .line 228
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    .line 229
    .local v0, "pendingCount":I
    if-eqz v0, :cond_2

    .line 230
    const-string v1, "SQLiteConnectionPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The connection pool for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has been closed but there are still "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " connections in use.  They will be closed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "as they are released back to the pool."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_2
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 237
    monitor-exit v2

    .line 239
    .end local v0    # "pendingCount":I
    :cond_3
    return-void

    .line 237
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V
    .locals 5
    .param p1, "connection"    # Landroid/database/sqlite/SQLiteConnection;
    .param p2, "connectionFlags"    # I

    .prologue
    .line 908
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 909
    .local v1, "readOnly":Z
    :goto_0
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteConnection;->setOnlyAllowReadOnlyOperations(Z)V

    .line 911
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    sget-object v3, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->NORMAL:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-virtual {v2, p1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    return-void

    .line 908
    .end local v1    # "readOnly":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 912
    .restart local v1    # "readOnly":Z
    :catch_0
    move-exception v0

    .line 913
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v2, "SQLiteConnectionPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to prepare acquired connection for session, closing it: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", connectionFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 916
    throw v0
.end method

.method private static getPriority(I)I
    .locals 1
    .param p0, "connectionFlags"    # I

    .prologue
    .line 945
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSessionBlockingImportantConnectionWaitersLocked(ZI)Z
    .locals 3
    .param p1, "holdingPrimaryConnection"    # Z
    .param p2, "connectionFlags"    # I

    .prologue
    .line 922
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 923
    .local v1, "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    if-eqz v1, :cond_1

    .line 924
    invoke-static {p2}, Landroid/database/sqlite/SQLiteConnectionPool;->getPriority(I)I

    move-result v0

    .line 927
    .local v0, "priority":I
    :cond_0
    iget v2, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    if-le v0, v2, :cond_2

    .line 941
    .end local v0    # "priority":I
    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 934
    .restart local v0    # "priority":I
    :cond_2
    if-nez p1, :cond_3

    iget-boolean v2, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mWantPrimaryConnection:Z

    if-nez v2, :cond_4

    .line 935
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 938
    :cond_4
    iget-object v1, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 939
    if-nez v1, :cond_0

    goto :goto_0
.end method

.method private logConnectionPoolBusyLocked(JI)V
    .locals 13
    .param p1, "waitMillis"    # J
    .param p3, "connectionFlags"    # I

    .prologue
    .line 738
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    .line 739
    .local v9, "thread":Ljava/lang/Thread;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 740
    .local v6, "msg":Ljava/lang/StringBuilder;
    const-string v10, "The connection pool for database \'"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v11, v11, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    const-string v10, "\' has been unable to grant a connection to thread "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    const-string/jumbo v10, "with flags 0x"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    const-string v10, " for "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    long-to-float v11, p1

    const v12, 0x3a83126f    # 0.001f

    mul-float/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " seconds.\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 747
    .local v8, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 748
    .local v0, "activeConnections":I
    const/4 v5, 0x0

    .line 749
    .local v5, "idleConnections":I
    iget-object v10, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v10}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 750
    iget-object v10, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v10}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteConnection;

    .line 751
    .local v2, "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteConnection;->describeCurrentOperationUnsafe()Ljava/lang/String;

    move-result-object v3

    .line 752
    .local v3, "description":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 753
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 756
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 760
    .end local v2    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local v3    # "description":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v10, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 761
    .local v1, "availableConnections":I
    iget-object v10, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v10, :cond_2

    .line 762
    add-int/lit8 v1, v1, 0x1

    .line 765
    :cond_2
    const-string v10, "Connections: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " active, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " idle, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " available.\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 770
    const-string v10, "\nRequests in progress:\n"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 772
    .local v7, "request":Ljava/lang/String;
    const-string v10, "  "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 776
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "request":Ljava/lang/String;
    :cond_3
    const-string v10, "SQLiteConnectionPool"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    return-void
.end method

.method private markAcquiredConnectionsLocked(Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)V
    .locals 8
    .param p1, "status"    # Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .prologue
    .line 572
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v6}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 573
    new-instance v3, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v6}, Ljava/util/WeakHashMap;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 576
    .local v3, "keysToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteConnection;>;"
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v6}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 577
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 578
    .local v4, "oldStatus":Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    if-eq p1, v4, :cond_0

    sget-object v6, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    if-eq v4, v6, :cond_0

    .line 580
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 583
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;>;"
    .end local v4    # "oldStatus":Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 584
    .local v5, "updateCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_2

    .line 585
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 588
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "keysToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteConnection;>;"
    .end local v5    # "updateCount":I
    :cond_2
    return-void
.end method

.method private obtainConnectionWaiterLocked(Ljava/lang/Thread;JIZLjava/lang/String;I)Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "startTime"    # J
    .param p4, "priority"    # I
    .param p5, "wantPrimaryConnection"    # Z
    .param p6, "sql"    # Ljava/lang/String;
    .param p7, "connectionFlags"    # I

    .prologue
    const/4 v2, 0x0

    .line 969
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 970
    .local v0, "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    if-eqz v0, :cond_0

    .line 971
    iget-object v1, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 972
    iput-object v2, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 976
    :goto_0
    iput-object p1, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    .line 977
    iput-wide p2, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    .line 978
    iput p4, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    .line 979
    iput-boolean p5, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mWantPrimaryConnection:Z

    .line 980
    iput-object p6, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    .line 981
    iput p7, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mConnectionFlags:I

    .line 982
    return-object v0

    .line 974
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .end local v0    # "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;-><init>(Landroid/database/sqlite/SQLiteConnectionPool$1;)V

    .restart local v0    # "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    goto :goto_0
.end method

.method public static open(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)Landroid/database/sqlite/SQLiteConnectionPool;
    .locals 3
    .param p0, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .prologue
    .line 171
    if-nez p0, :cond_0

    .line 172
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "configuration must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteConnectionPool;-><init>(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    .line 177
    .local v0, "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    invoke-direct {v0}, Landroid/database/sqlite/SQLiteConnectionPool;->open()V

    .line 178
    return-object v0
.end method

.method private open()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 185
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->openConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 189
    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    .line 190
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method private openConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z)Landroid/database/sqlite/SQLiteConnection;
    .locals 2
    .param p1, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    .param p2, "primaryConnection"    # Z

    .prologue
    .line 462
    iget v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mNextConnectionId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mNextConnectionId:I

    .line 463
    .local v0, "connectionId":I
    invoke-static {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteConnection;->open(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;IZ)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v1

    return-object v1
.end method

.method private reconfigureAllConnectionsLocked()V
    .locals 8

    .prologue
    .line 542
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v5, :cond_0

    .line 544
    :try_start_0
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteConnection;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :cond_0
    :goto_0
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 554
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 555
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteConnection;

    .line 557
    .local v0, "connection":Landroid/database/sqlite/SQLiteConnection;
    :try_start_1
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteConnection;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v4

    .line 554
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 545
    .end local v0    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local v1    # "count":I
    .end local v4    # "i":I
    :catch_0
    move-exception v2

    .line 546
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v5, "SQLiteConnectionPool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to reconfigure available primary connection, closing it: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 548
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-direct {p0, v5}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 549
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    goto :goto_0

    .line 558
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .restart local v1    # "count":I
    .restart local v4    # "i":I
    :catch_1
    move-exception v2

    .line 559
    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    const-string v5, "SQLiteConnectionPool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to reconfigure available non-primary connection, closing it: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 561
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 562
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 563
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 567
    .end local v0    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_1
    sget-object v5, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->RECONFIGURE:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-direct {p0, v5}, Landroid/database/sqlite/SQLiteConnectionPool;->markAcquiredConnectionsLocked(Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)V

    .line 568
    return-void
.end method

.method private recycleConnectionLocked(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)Z
    .locals 4
    .param p1, "connection"    # Landroid/database/sqlite/SQLiteConnection;
    .param p2, "status"    # Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .prologue
    .line 394
    sget-object v1, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->RECONFIGURE:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    if-ne p2, v1, :cond_0

    .line 396
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteConnection;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :cond_0
    :goto_0
    sget-object v1, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    if-ne p2, v1, :cond_1

    .line 404
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 405
    const/4 v1, 0x0

    .line 407
    :goto_1
    return v1

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "SQLiteConnectionPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to reconfigure released connection, closing it: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    sget-object p2, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    goto :goto_0

    .line 407
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private recycleConnectionWaiterLocked(Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V
    .locals 2
    .param p1, "waiter"    # Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .prologue
    const/4 v1, 0x0

    .line 986
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput-object v0, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 987
    iput-object v1, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    .line 988
    iput-object v1, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    .line 989
    iput-object v1, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 990
    iput-object v1, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    .line 991
    iget v0, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    .line 992
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 993
    return-void
.end method

.method private setMaxConnectionPoolSizeLocked()V
    .locals 2

    .prologue
    .line 949
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 950
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getWALConnectionPoolSize()I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    .line 958
    :goto_0
    return-void

    .line 956
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    goto :goto_0
.end method

.method private throwIfClosedLocked()V
    .locals 2

    .prologue
    .line 961
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    if-nez v0, :cond_0

    .line 962
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this operation because the connection pool has been closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 965
    :cond_0
    return-void
.end method

.method private tryAcquireNonPrimaryConnectionLocked(Ljava/lang/String;I)Landroid/database/sqlite/SQLiteConnection;
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I

    .prologue
    .line 871
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 872
    .local v0, "availableCount":I
    const/4 v4, 0x1

    if-le v0, v4, :cond_1

    if-eqz p1, :cond_1

    .line 875
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 876
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteConnection;

    .line 877
    .local v1, "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteConnection;->isPreparedStatementInCache(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 878
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 879
    invoke-direct {p0, v1, p2}, Landroid/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V

    .line 902
    .end local v1    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local v2    # "i":I
    :goto_1
    return-object v1

    .line 875
    .restart local v1    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 884
    .end local v1    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local v2    # "i":I
    :cond_1
    if-lez v0, :cond_2

    .line 886
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteConnection;

    .line 887
    .restart local v1    # "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-direct {p0, v1, p2}, Landroid/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V

    goto :goto_1

    .line 892
    .end local v1    # "connection":Landroid/database/sqlite/SQLiteConnection;
    :cond_2
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->size()I

    move-result v3

    .line 893
    .local v3, "openConnections":I
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v4, :cond_3

    .line 894
    add-int/lit8 v3, v3, 0x1

    .line 896
    :cond_3
    iget v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    if-lt v3, v4, :cond_4

    .line 897
    const/4 v1, 0x0

    goto :goto_1

    .line 899
    :cond_4
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Landroid/database/sqlite/SQLiteConnectionPool;->openConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v1

    .line 901
    .restart local v1    # "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-direct {p0, v1, p2}, Landroid/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V

    goto :goto_1
.end method

.method private tryAcquirePrimaryConnectionLocked(I)Landroid/database/sqlite/SQLiteConnection;
    .locals 5
    .param p1, "connectionFlags"    # I

    .prologue
    const/4 v3, 0x0

    .line 844
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 845
    .local v1, "connection":Landroid/database/sqlite/SQLiteConnection;
    if-eqz v1, :cond_0

    .line 846
    iput-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 847
    invoke-direct {p0, v1, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V

    move-object v3, v1

    .line 863
    :goto_0
    return-object v3

    .line 852
    :cond_0
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteConnection;

    .line 853
    .local v0, "acquiredConnection":Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnection;->isPrimaryConnection()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 860
    .end local v0    # "acquiredConnection":Landroid/database/sqlite/SQLiteConnection;
    :cond_2
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Landroid/database/sqlite/SQLiteConnectionPool;->openConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v1

    .line 862
    invoke-direct {p0, v1, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V

    move-object v3, v1

    .line 863
    goto :goto_0
.end method

.method private waitForConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)Landroid/database/sqlite/SQLiteConnection;
    .locals 24
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 593
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_4

    const/4 v8, 0x1

    .line 598
    .local v8, "wantPrimaryConnection":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 599
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/database/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    .line 602
    if-eqz p3, :cond_0

    .line 603
    invoke-virtual/range {p3 .. p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 607
    :cond_0
    const/4 v13, 0x0

    .line 608
    .local v13, "connection":Landroid/database/sqlite/SQLiteConnection;
    if-nez v8, :cond_1

    .line 609
    invoke-direct/range {p0 .. p2}, Landroid/database/sqlite/SQLiteConnectionPool;->tryAcquireNonPrimaryConnectionLocked(Ljava/lang/String;I)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v13

    .line 612
    :cond_1
    if-nez v13, :cond_2

    .line 613
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->tryAcquirePrimaryConnectionLocked(I)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v13

    .line 615
    :cond_2
    if-eqz v13, :cond_5

    .line 616
    monitor-exit v23

    .line 702
    :cond_3
    :goto_1
    return-object v13

    .line 593
    .end local v8    # "wantPrimaryConnection":Z
    .end local v13    # "connection":Landroid/database/sqlite/SQLiteConnection;
    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 620
    .restart local v8    # "wantPrimaryConnection":Z
    .restart local v13    # "connection":Landroid/database/sqlite/SQLiteConnection;
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/database/sqlite/SQLiteConnectionPool;->getPriority(I)I

    move-result v7

    .line 621
    .local v7, "priority":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 622
    .local v5, "startTime":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    move-object/from16 v3, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    invoke-direct/range {v3 .. v10}, Landroid/database/sqlite/SQLiteConnectionPool;->obtainConnectionWaiterLocked(Ljava/lang/Thread;JIZLjava/lang/String;I)Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    move-result-object v22

    .line 624
    .local v22, "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    const/16 v20, 0x0

    .line 625
    .local v20, "predecessor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    move-object/from16 v21, v0

    .line 626
    .local v21, "successor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :goto_2
    if-eqz v21, :cond_6

    .line 627
    move-object/from16 v0, v21

    iget v3, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    if-le v7, v3, :cond_a

    .line 628
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 634
    :cond_6
    if-eqz v20, :cond_b

    .line 635
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 640
    :goto_3
    move-object/from16 v0, v22

    iget v0, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    move/from16 v17, v0

    .line 641
    .local v17, "nonce":I
    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    if-eqz p3, :cond_7

    .line 645
    new-instance v3, Landroid/database/sqlite/SQLiteConnectionPool$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v17

    invoke-direct {v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool$1;-><init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 659
    :cond_7
    const-wide/16 v11, 0x7530

    .line 660
    .local v11, "busyTimeoutMillis":J
    :try_start_1
    move-object/from16 v0, v22

    iget-wide v3, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    add-long v15, v3, v11

    .line 663
    .local v15, "nextBusyTimeoutTime":J
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    const/4 v9, 0x0

    invoke-virtual {v3, v4, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 664
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 665
    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 666
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 670
    :cond_8
    const-wide/32 v3, 0xf4240

    mul-long/2addr v3, v11

    :try_start_3
    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 673
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 676
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 677
    :try_start_4
    invoke-direct/range {p0 .. p0}, Landroid/database/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    .line 679
    move-object/from16 v0, v22

    iget-object v13, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 680
    move-object/from16 v0, v22

    iget-object v14, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    .line 681
    .local v14, "ex":Ljava/lang/RuntimeException;
    if-nez v13, :cond_9

    if-eqz v14, :cond_e

    .line 682
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->recycleConnectionWaiterLocked(Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V

    .line 683
    if-eqz v13, :cond_d

    .line 684
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 701
    if-eqz p3, :cond_3

    .line 702
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    goto/16 :goto_1

    .line 631
    .end local v11    # "busyTimeoutMillis":J
    .end local v14    # "ex":Ljava/lang/RuntimeException;
    .end local v15    # "nextBusyTimeoutTime":J
    .end local v17    # "nonce":I
    :cond_a
    move-object/from16 v20, v21

    .line 632
    :try_start_5
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    move-object/from16 v21, v0

    goto/16 :goto_2

    .line 637
    :cond_b
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_3

    .line 641
    .end local v5    # "startTime":J
    .end local v7    # "priority":I
    .end local v13    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local v20    # "predecessor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .end local v21    # "successor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .end local v22    # "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :catchall_0
    move-exception v3

    monitor-exit v23
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    .line 666
    .restart local v5    # "startTime":J
    .restart local v7    # "priority":I
    .restart local v11    # "busyTimeoutMillis":J
    .restart local v13    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .restart local v15    # "nextBusyTimeoutTime":J
    .restart local v17    # "nonce":I
    .restart local v20    # "predecessor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .restart local v21    # "successor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .restart local v22    # "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 701
    .end local v15    # "nextBusyTimeoutTime":J
    :catchall_2
    move-exception v3

    if-eqz p3, :cond_c

    .line 702
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_c
    throw v3

    .line 686
    .restart local v14    # "ex":Ljava/lang/RuntimeException;
    .restart local v15    # "nextBusyTimeoutTime":J
    :cond_d
    :try_start_8
    throw v14

    .line 697
    .end local v14    # "ex":Ljava/lang/RuntimeException;
    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 689
    .restart local v14    # "ex":Ljava/lang/RuntimeException;
    :cond_e
    :try_start_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 690
    .local v18, "now":J
    cmp-long v3, v18, v15

    if-gez v3, :cond_f

    .line 691
    sub-long v11, v18, v15

    .line 697
    :goto_5
    monitor-exit v4

    goto :goto_4

    .line 693
    :cond_f
    move-object/from16 v0, v22

    iget-wide v9, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    sub-long v9, v18, v9

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v9, v10, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->logConnectionPoolBusyLocked(JI)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 694
    const-wide/16 v11, 0x7530

    .line 695
    add-long v15, v18, v11

    goto :goto_5
.end method

.method private wakeConnectionWaitersLocked()V
    .locals 10

    .prologue
    .line 784
    const/4 v3, 0x0

    .line 785
    .local v3, "predecessor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 786
    .local v7, "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    const/4 v4, 0x0

    .line 787
    .local v4, "primaryConnectionNotAvailable":Z
    const/4 v2, 0x0

    .line 788
    .local v2, "nonPrimaryConnectionNotAvailable":Z
    :goto_0
    if-eqz v7, :cond_5

    .line 789
    const/4 v6, 0x0

    .line 790
    .local v6, "unpark":Z
    iget-boolean v8, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    if-nez v8, :cond_1

    .line 791
    const/4 v6, 0x1

    .line 824
    :cond_0
    :goto_1
    iget-object v5, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 825
    .local v5, "successor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    if-eqz v6, :cond_7

    .line 826
    if-eqz v3, :cond_6

    .line 827
    iput-object v5, v3, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 831
    :goto_2
    const/4 v8, 0x0

    iput-object v8, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 833
    iget-object v8, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    invoke-static {v8}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 837
    :goto_3
    move-object v7, v5

    .line 838
    goto :goto_0

    .line 794
    .end local v5    # "successor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :cond_1
    const/4 v0, 0x0

    .line 795
    .local v0, "connection":Landroid/database/sqlite/SQLiteConnection;
    :try_start_0
    iget-boolean v8, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mWantPrimaryConnection:Z

    if-nez v8, :cond_2

    if-nez v2, :cond_2

    .line 796
    iget-object v8, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    iget v9, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mConnectionFlags:I

    invoke-direct {p0, v8, v9}, Landroid/database/sqlite/SQLiteConnectionPool;->tryAcquireNonPrimaryConnectionLocked(Ljava/lang/String;I)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v0

    .line 798
    if-nez v0, :cond_2

    .line 799
    const/4 v2, 0x1

    .line 802
    :cond_2
    if-nez v0, :cond_3

    if-nez v4, :cond_3

    .line 803
    iget v8, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mConnectionFlags:I

    invoke-direct {p0, v8}, Landroid/database/sqlite/SQLiteConnectionPool;->tryAcquirePrimaryConnectionLocked(I)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v0

    .line 805
    if-nez v0, :cond_3

    .line 806
    const/4 v4, 0x1

    .line 809
    :cond_3
    if-eqz v0, :cond_4

    .line 810
    iput-object v0, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Landroid/database/sqlite/SQLiteConnection;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    const/4 v6, 0x1

    goto :goto_1

    .line 812
    :cond_4
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 839
    .end local v0    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local v6    # "unpark":Z
    :cond_5
    return-void

    .line 817
    .restart local v0    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .restart local v6    # "unpark":Z
    :catch_0
    move-exception v1

    .line 819
    .local v1, "ex":Ljava/lang/RuntimeException;
    iput-object v1, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    .line 820
    const/4 v6, 0x1

    goto :goto_1

    .line 829
    .end local v0    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v5    # "successor":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :cond_6
    iput-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_2

    .line 835
    :cond_7
    move-object v3, v7

    goto :goto_3
.end method


# virtual methods
.method public acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)Landroid/database/sqlite/SQLiteConnection;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 348
    invoke-direct {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteConnectionPool;->waitForConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->dispose(Z)V

    .line 206
    return-void
.end method

.method public collectDbStats(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 445
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v2, :cond_0

    .line 446
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v2, p1}, Landroid/database/sqlite/SQLiteConnection;->collectDbStats(Ljava/util/ArrayList;)V

    .line 449
    :cond_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteConnection;

    .line 450
    .local v0, "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection;->collectDbStats(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 456
    .end local v0    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 453
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteConnection;

    .line 454
    .restart local v0    # "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection;->collectDbStatsUnsafe(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 456
    .end local v0    # "connection":Landroid/database/sqlite/SQLiteConnection;
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    return-void
.end method

.method public dump(Landroid/util/Printer;Z)V
    .locals 13
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    .prologue
    .line 1002
    const-string v9, "    "

    invoke-static {p1, v9}, Landroid/util/PrefixPrinter;->create(Landroid/util/Printer;Ljava/lang/String;)Landroid/util/Printer;

    move-result-object v5

    .line 1003
    .local v5, "indentedPrinter":Landroid/util/Printer;
    iget-object v10, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1004
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Connection pool for "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v11, v11, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ":"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1005
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Open: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1006
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Max connections: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1008
    const-string v9, "  Available primary connection:"

    invoke-interface {p1, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1009
    iget-object v9, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v9, :cond_0

    .line 1010
    iget-object v9, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v9, v5, p2}, Landroid/database/sqlite/SQLiteConnection;->dump(Landroid/util/Printer;Z)V

    .line 1015
    :goto_0
    const-string v9, "  Available non-primary connections:"

    invoke-interface {p1, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1016
    iget-object v9, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1017
    iget-object v9, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1018
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 1019
    iget-object v9, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v9, v5, p2}, Landroid/database/sqlite/SQLiteConnection;->dump(Landroid/util/Printer;Z)V

    .line 1018
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1012
    .end local v1    # "count":I
    .end local v3    # "i":I
    :cond_0
    const-string v9, "<none>"

    invoke-interface {v5, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1052
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 1022
    :cond_1
    :try_start_1
    const-string v9, "<none>"

    invoke-interface {v5, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1025
    :cond_2
    const-string v9, "  Acquired connections:"

    invoke-interface {p1, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1026
    iget-object v9, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v9}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1028
    iget-object v9, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v9}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1029
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteConnection;

    .line 1030
    .local v0, "connection":Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v0, v5, p2}, Landroid/database/sqlite/SQLiteConnection;->dumpUnsafe(Landroid/util/Printer;Z)V

    .line 1031
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Status: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1034
    .end local v0    # "connection":Landroid/database/sqlite/SQLiteConnection;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    const-string v9, "<none>"

    invoke-interface {v5, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1037
    :cond_4
    const-string v9, "  Connection waiters:"

    invoke-interface {p1, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1038
    iget-object v9, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    if-eqz v9, :cond_5

    .line 1039
    const/4 v3, 0x0

    .line 1040
    .restart local v3    # "i":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1041
    .local v6, "now":J
    iget-object v8, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .local v8, "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :goto_3
    if-eqz v8, :cond_6

    .line 1043
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ": waited for "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v11, v8, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    sub-long v11, v6, v11

    long-to-float v11, v11

    const v12, 0x3a83126f    # 0.001f

    mul-float/2addr v11, v12

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " ms - thread="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v8, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", priority="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v8, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", sql=\'"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v8, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\'"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1042
    iget-object v8, v8, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1050
    .end local v3    # "i":I
    .end local v6    # "now":J
    .end local v8    # "waiter":Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :cond_5
    const-string v9, "<none>"

    invoke-interface {v5, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1052
    :cond_6
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1053
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 156
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 160
    return-void

    .line 158
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method onConnectionLeaked()V
    .locals 3

    .prologue
    .line 488
    const-string v0, "SQLiteConnectionPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A SQLiteConnection object for database \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' was leaked!  Please fix your application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "to end transactions in progress properly and to close the database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "when it is no longer needed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 494
    return-void
.end method

.method public reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .locals 7
    .param p1, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 255
    if-nez p1, :cond_0

    .line 256
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "configuration must not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 259
    :cond_0
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 260
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    .line 262
    iget v5, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v6, v6, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    xor-int/2addr v5, v6

    const/high16 v6, 0x20000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    move v2, v0

    .line 264
    .local v2, "walModeChanged":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 267
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 268
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Write Ahead Logging (WAL) mode cannot be enabled or disabled while there are transactions in progress.  Finish all transactions and release all active database connections first."

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 325
    .end local v2    # "walModeChanged":Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    move v2, v3

    .line 262
    goto :goto_0

    .line 276
    .restart local v2    # "walModeChanged":Z
    :cond_2
    :try_start_1
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V

    .line 277
    sget-boolean v5, Landroid/database/sqlite/SQLiteConnectionPool;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 280
    :cond_3
    iget-boolean v5, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v6, v6, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    if-eq v5, v6, :cond_4

    .line 282
    .local v0, "foreignKeyModeChanged":Z
    :goto_1
    if-eqz v0, :cond_5

    .line 286
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 287
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Foreign Key Constraints cannot be enabled or disabled while there are transactions in progress.  Finish all transactions and release all active database connections first."

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0    # "foreignKeyModeChanged":Z
    :cond_4
    move v0, v3

    .line 280
    goto :goto_1

    .line 294
    .restart local v0    # "foreignKeyModeChanged":Z
    :cond_5
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget v5, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    if-eq v3, v5, :cond_7

    .line 298
    if-eqz v2, :cond_6

    .line 299
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableConnectionsAndLogExceptionsLocked()V

    .line 306
    :cond_6
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->openConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v1

    .line 309
    .local v1, "newPrimaryConnection":Landroid/database/sqlite/SQLiteConnection;
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableConnectionsAndLogExceptionsLocked()V

    .line 310
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->discardAcquiredConnectionsLocked()V

    .line 312
    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 313
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v3, p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->updateParametersFrom(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    .line 314
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSizeLocked()V

    .line 324
    .end local v1    # "newPrimaryConnection":Landroid/database/sqlite/SQLiteConnection;
    :goto_2
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 325
    monitor-exit v4

    .line 326
    return-void

    .line 317
    :cond_7
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v3, p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->updateParametersFrom(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    .line 318
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSizeLocked()V

    .line 320
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeExcessConnectionsAndLogExceptionsLocked()V

    .line 321
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigureAllConnectionsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public releaseConnection(Landroid/database/sqlite/SQLiteConnection;)V
    .locals 4
    .param p1, "connection"    # Landroid/database/sqlite/SQLiteConnection;

    .prologue
    .line 364
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 365
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 366
    .local v0, "status":Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    if-nez v0, :cond_0

    .line 367
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot perform this operation because the specified connection was not acquired from this pool or has already been released."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 388
    .end local v0    # "status":Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 372
    .restart local v0    # "status":Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    if-nez v1, :cond_1

    .line 373
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 388
    :goto_0
    monitor-exit v2

    .line 389
    return-void

    .line 374
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection;->isPrimaryConnection()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 375
    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->recycleConnectionLocked(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 376
    sget-boolean v1, Landroid/database/sqlite/SQLiteConnectionPool;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 377
    :cond_2
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 379
    :cond_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    goto :goto_0

    .line 380
    :cond_4
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    add-int/lit8 v3, v3, -0x1

    if-lt v1, v3, :cond_5

    .line 381
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    goto :goto_0

    .line 383
    :cond_5
    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->recycleConnectionLocked(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 384
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_6
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public shouldYieldConnection(Landroid/database/sqlite/SQLiteConnection;I)Z
    .locals 3
    .param p1, "connection"    # Landroid/database/sqlite/SQLiteConnection;
    .param p2, "connectionFlags"    # I

    .prologue
    .line 422
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 423
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot perform this operation because the specified connection was not acquired from this pool or has already been released."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 429
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    if-nez v0, :cond_1

    .line 430
    const/4 v0, 0x0

    monitor-exit v1

    .line 433
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection;->isPrimaryConnection()Z

    move-result v0

    invoke-direct {p0, v0, p2}, Landroid/database/sqlite/SQLiteConnectionPool;->isSessionBlockingImportantConnectionWaitersLocked(ZI)Z

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteConnectionPool: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
