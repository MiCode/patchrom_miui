.class public abstract Landroid/content/AsyncTaskLoader;
.super Landroid/content/Loader;
.source "AsyncTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/AsyncTaskLoader$LoadTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/content/Loader",
        "<TD;>;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AsyncTaskLoader"


# instance fields
.field volatile mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/AsyncTaskLoader",
            "<TD;>.",
            "LoadTask;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field mHandler:Landroid/os/Handler;

.field mLastLoadCompleteTime:J

.field volatile mTask:Landroid/content/AsyncTaskLoader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/AsyncTaskLoader",
            "<TD;>.",
            "LoadTask;"
        }
    .end annotation
.end field

.field mUpdateThrottle:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 142
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    invoke-direct {p0, p1}, Landroid/content/Loader;-><init>(Landroid/content/Context;)V

    .line 133
    const-wide/16 v0, -0x2710

    iput-wide v0, p0, Landroid/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 143
    iput-object p2, p0, Landroid/content/AsyncTaskLoader;->mExecutor:Ljava/util/concurrent/Executor;

    .line 144
    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 0

    .prologue
    .line 327
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    return-void
.end method

.method dispatchOnCancelled(Landroid/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AsyncTaskLoader",
            "<TD;>.",
            "LoadTask;",
            "TD;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    .local p1, "task":Landroid/content/AsyncTaskLoader$LoadTask;, "Landroid/content/AsyncTaskLoader<TD;>.LoadTask;"
    .local p2, "data":Ljava/lang/Object;, "TD;"
    invoke-virtual {p0, p2}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 241
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    if-ne v0, p1, :cond_0

    .line 243
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->rollbackContentChanged()V

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 247
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->deliverCancellation()V

    .line 248
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->executePendingTask()V

    .line 250
    :cond_0
    return-void
.end method

.method dispatchOnLoadComplete(Landroid/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AsyncTaskLoader",
            "<TD;>.",
            "LoadTask;",
            "TD;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    .local p1, "task":Landroid/content/AsyncTaskLoader$LoadTask;, "Landroid/content/AsyncTaskLoader<TD;>.LoadTask;"
    .local p2, "data":Ljava/lang/Object;, "TD;"
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    if-eq v0, p1, :cond_0

    .line 255
    invoke-virtual {p0, p1, p2}, Landroid/content/AsyncTaskLoader;->dispatchOnCancelled(Landroid/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V

    .line 268
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->isAbandoned()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    invoke-virtual {p0, p2}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    goto :goto_0

    .line 261
    :cond_1
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->commitContentChanged()V

    .line 262
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 265
    invoke-virtual {p0, p2}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 359
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 362
    const-string v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 364
    :cond_0
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_1

    .line 365
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCancellingTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 366
    const-string v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 368
    :cond_1
    iget-wide v0, p0, Landroid/content/AsyncTaskLoader;->mUpdateThrottle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 369
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUpdateThrottle="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 370
    iget-wide v0, p0, Landroid/content/AsyncTaskLoader;->mUpdateThrottle:J

    invoke-static {v0, v1, p3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 371
    const-string v0, " mLastLoadCompleteTime="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 372
    iget-wide v0, p0, Landroid/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p3}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 374
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 376
    :cond_2
    return-void
.end method

.method executePendingTask()V
    .locals 8

    .prologue
    .line 217
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    iget-object v2, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    if-eqz v2, :cond_1

    .line 218
    iget-object v2, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iget-boolean v2, v2, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 220
    iget-object v2, p0, Landroid/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 222
    :cond_0
    iget-wide v2, p0, Landroid/content/AsyncTaskLoader;->mUpdateThrottle:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 223
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 224
    .local v0, "now":J
    iget-wide v2, p0, Landroid/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    iget-wide v4, p0, Landroid/content/AsyncTaskLoader;->mUpdateThrottle:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 229
    iget-object v2, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 230
    iget-object v2, p0, Landroid/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iget-wide v4, p0, Landroid/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    iget-wide v6, p0, Landroid/content/AsyncTaskLoader;->mUpdateThrottle:J

    add-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 237
    .end local v0    # "now":J
    :cond_1
    :goto_0
    return-void

    .line 235
    :cond_2
    iget-object v3, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iget-object v4, p0, Landroid/content/AsyncTaskLoader;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v3, v4, v2}, Landroid/content/AsyncTaskLoader$LoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public isLoadInBackgroundCanceled()Z
    .locals 1

    .prologue
    .line 337
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract loadInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method protected onCancelLoad()Z
    .locals 4

    .prologue
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 172
    iget-object v1, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    if-eqz v1, :cond_1

    .line 173
    iget-object v1, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    if-eqz v1, :cond_2

    .line 178
    iget-object v1, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iget-boolean v1, v1, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iput-boolean v0, v1, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 180
    iget-object v1, p0, Landroid/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    :cond_0
    iput-object v3, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 203
    :cond_1
    :goto_0
    return v0

    .line 184
    :cond_2
    iget-object v1, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iget-boolean v1, v1, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v1, :cond_3

    .line 188
    iget-object v1, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iput-boolean v0, v1, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 189
    iget-object v1, p0, Landroid/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 190
    iput-object v3, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    goto :goto_0

    .line 193
    :cond_3
    iget-object v1, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v1, v0}, Landroid/content/AsyncTaskLoader$LoadTask;->cancel(Z)Z

    move-result v0

    .line 195
    .local v0, "cancelled":Z
    if-eqz v0, :cond_4

    .line 196
    iget-object v1, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iput-object v1, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 197
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->cancelLoadInBackground()V

    .line 199
    :cond_4
    iput-object v3, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    goto :goto_0
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    return-void
.end method

.method protected onForceLoad()V
    .locals 1

    .prologue
    .line 162
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    invoke-super {p0}, Landroid/content/Loader;->onForceLoad()V

    .line 163
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->cancelLoad()Z

    .line 164
    new-instance v0, Landroid/content/AsyncTaskLoader$LoadTask;

    invoke-direct {v0, p0}, Landroid/content/AsyncTaskLoader$LoadTask;-><init>(Landroid/content/AsyncTaskLoader;)V

    iput-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 166
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->executePendingTask()V

    .line 167
    return-void
.end method

.method protected onLoadInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->loadInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setUpdateThrottle(J)V
    .locals 2
    .param p1, "delayMS"    # J

    .prologue
    .line 154
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    iput-wide p1, p0, Landroid/content/AsyncTaskLoader;->mUpdateThrottle:J

    .line 155
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    .line 158
    :cond_0
    return-void
.end method

.method public waitForLoader()V
    .locals 1

    .prologue
    .line 351
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 352
    .local v0, "task":Landroid/content/AsyncTaskLoader$LoadTask;, "Landroid/content/AsyncTaskLoader<TD;>.LoadTask;"
    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0}, Landroid/content/AsyncTaskLoader$LoadTask;->waitForLoader()V

    .line 355
    :cond_0
    return-void
.end method
