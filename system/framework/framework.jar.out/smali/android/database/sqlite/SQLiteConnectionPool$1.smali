.class Landroid/database/sqlite/SQLiteConnectionPool$1;
.super Ljava/lang/Object;
.source "SQLiteConnectionPool.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/database/sqlite/SQLiteConnectionPool;->waitForConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/database/sqlite/SQLiteConnectionPool;

.field final synthetic val$nonce:I

.field final synthetic val$waiter:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;I)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    iput-object p2, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->val$waiter:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput p3, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->val$nonce:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 648
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    # getter for: Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnectionPool;->access$000(Landroid/database/sqlite/SQLiteConnectionPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 649
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->val$waiter:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iget v0, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    iget v2, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->val$nonce:I

    if-ne v0, v2, :cond_0

    .line 650
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->val$waiter:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    # invokes: Landroid/database/sqlite/SQLiteConnectionPool;->cancelConnectionWaiterLocked(Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V
    invoke-static {v0, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->access$100(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V

    .line 652
    :cond_0
    monitor-exit v1

    .line 653
    return-void

    .line 652
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
