.class Landroid/app/SharedPreferencesImpl$2;
.super Ljava/lang/Object;
.source "SharedPreferencesImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/SharedPreferencesImpl;->enqueueDiskWrite(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/SharedPreferencesImpl;

.field final synthetic val$mcr:Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

.field final synthetic val$postWriteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl$2;->this$0:Landroid/app/SharedPreferencesImpl;

    iput-object p2, p0, Landroid/app/SharedPreferencesImpl$2;->val$mcr:Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    iput-object p3, p0, Landroid/app/SharedPreferencesImpl$2;->val$postWriteRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 510
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$2;->this$0:Landroid/app/SharedPreferencesImpl;

    # getter for: Landroid/app/SharedPreferencesImpl;->mWritingToDiskLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->access$700(Landroid/app/SharedPreferencesImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 511
    :try_start_0
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$2;->this$0:Landroid/app/SharedPreferencesImpl;

    iget-object v2, p0, Landroid/app/SharedPreferencesImpl$2;->val$mcr:Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    # invokes: Landroid/app/SharedPreferencesImpl;->writeToFile(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V
    invoke-static {v0, v2}, Landroid/app/SharedPreferencesImpl;->access$800(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    .line 512
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$2;->this$0:Landroid/app/SharedPreferencesImpl;

    monitor-enter v1

    .line 514
    :try_start_1
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$2;->this$0:Landroid/app/SharedPreferencesImpl;

    # operator-- for: Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I
    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->access$310(Landroid/app/SharedPreferencesImpl;)I

    .line 515
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 516
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$2;->val$postWriteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$2;->val$postWriteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 519
    :cond_0
    return-void

    .line 512
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 515
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
