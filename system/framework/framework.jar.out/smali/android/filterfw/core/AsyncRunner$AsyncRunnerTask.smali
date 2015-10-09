.class Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;
.super Landroid/os/AsyncTask;
.source "AsyncRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/core/AsyncRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncRunnerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/filterfw/core/SyncRunner;",
        "Ljava/lang/Void;",
        "Landroid/filterfw/core/AsyncRunner$RunnerResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AsyncRunnerTask"


# instance fields
.field final synthetic this$0:Landroid/filterfw/core/AsyncRunner;


# direct methods
.method private constructor <init>(Landroid/filterfw/core/AsyncRunner;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/filterfw/core/AsyncRunner;Landroid/filterfw/core/AsyncRunner$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/filterfw/core/AsyncRunner;
    .param p2, "x1"    # Landroid/filterfw/core/AsyncRunner$1;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;-><init>(Landroid/filterfw/core/AsyncRunner;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/filterfw/core/SyncRunner;)Landroid/filterfw/core/AsyncRunner$RunnerResult;
    .locals 6
    .param p1, "runner"    # [Landroid/filterfw/core/SyncRunner;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    .line 57
    new-instance v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;

    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/filterfw/core/AsyncRunner$RunnerResult;-><init>(Landroid/filterfw/core/AsyncRunner;Landroid/filterfw/core/AsyncRunner$1;)V

    .line 59
    .local v1, "result":Landroid/filterfw/core/AsyncRunner$RunnerResult;
    :try_start_0
    array-length v2, p1

    if-le v2, v4, :cond_2

    .line 60
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "More than one runner received!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "exception":Ljava/lang/Exception;
    iput-object v0, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->exception:Ljava/lang/Exception;

    .line 92
    iput v5, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    .line 97
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-virtual {v2}, Landroid/filterfw/core/AsyncRunner;->deactivateGlContext()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    :goto_1
    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    # getter for: Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z
    invoke-static {v2}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "AsyncRunnerTask"

    const-string v3, "Done with background graph processing."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_1
    return-object v1

    .line 63
    :cond_2
    const/4 v2, 0x0

    :try_start_2
    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/filterfw/core/SyncRunner;->assertReadyToStep()V

    .line 66
    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    # getter for: Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z
    invoke-static {v2}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "AsyncRunnerTask"

    const-string v3, "Starting background graph processing."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_3
    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-virtual {v2}, Landroid/filterfw/core/AsyncRunner;->activateGlContext()Z

    .line 69
    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    # getter for: Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z
    invoke-static {v2}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "AsyncRunnerTask"

    const-string v3, "Preparing filter graph for processing."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_4
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/filterfw/core/SyncRunner;->beginProcessing()V

    .line 72
    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    # getter for: Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z
    invoke-static {v2}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "AsyncRunnerTask"

    const-string v3, "Running graph."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_5
    const/4 v2, 0x1

    iput v2, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    .line 76
    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_7

    iget v2, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    if-ne v2, v4, :cond_7

    .line 77
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/filterfw/core/SyncRunner;->performStep()Z

    move-result v2

    if-nez v2, :cond_6

    .line 78
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/filterfw/core/SyncRunner;->determinePostRunState()I

    move-result v2

    iput v2, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    .line 79
    iget v2, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 80
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/filterfw/core/SyncRunner;->waitUntilWake()V

    .line 81
    const/4 v2, 0x1

    iput v2, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    goto :goto_2

    .line 87
    :cond_7
    invoke-virtual {p0}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    const/4 v2, 0x5

    iput v2, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 98
    :catch_1
    move-exception v0

    .line 99
    .restart local v0    # "exception":Ljava/lang/Exception;
    iput-object v0, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->exception:Ljava/lang/Exception;

    .line 100
    iput v5, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, [Landroid/filterfw/core/SyncRunner;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->doInBackground([Landroid/filterfw/core/SyncRunner;)Landroid/filterfw/core/AsyncRunner$RunnerResult;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V
    .locals 0
    .param p1, "result"    # Landroid/filterfw/core/AsyncRunner$RunnerResult;

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->onPostExecute(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V

    .line 110
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->onCancelled(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V

    return-void
.end method

.method protected onPostExecute(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V
    .locals 5
    .param p1, "result"    # Landroid/filterfw/core/AsyncRunner$RunnerResult;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x5

    .line 114
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    # getter for: Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z
    invoke-static {v1}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AsyncRunnerTask"

    const-string v2, "Starting post-execute."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    const/4 v2, 0x0

    # invokes: Landroid/filterfw/core/AsyncRunner;->setRunning(Z)V
    invoke-static {v1, v2}, Landroid/filterfw/core/AsyncRunner;->access$200(Landroid/filterfw/core/AsyncRunner;Z)V

    .line 116
    if-nez p1, :cond_1

    .line 118
    new-instance p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;

    .end local p1    # "result":Landroid/filterfw/core/AsyncRunner$RunnerResult;
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Landroid/filterfw/core/AsyncRunner$RunnerResult;-><init>(Landroid/filterfw/core/AsyncRunner;Landroid/filterfw/core/AsyncRunner$1;)V

    .line 119
    .restart local p1    # "result":Landroid/filterfw/core/AsyncRunner$RunnerResult;
    iput v3, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    .line 121
    :cond_1
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    iget-object v2, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->exception:Ljava/lang/Exception;

    # invokes: Landroid/filterfw/core/AsyncRunner;->setException(Ljava/lang/Exception;)V
    invoke-static {v1, v2}, Landroid/filterfw/core/AsyncRunner;->access$300(Landroid/filterfw/core/AsyncRunner;Ljava/lang/Exception;)V

    .line 122
    iget v1, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    if-eq v1, v3, :cond_2

    iget v1, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    if-ne v1, v4, :cond_4

    .line 123
    :cond_2
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    # getter for: Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z
    invoke-static {v1}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "AsyncRunnerTask"

    const-string v2, "Closing filters."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_3
    :try_start_0
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    # getter for: Landroid/filterfw/core/AsyncRunner;->mRunner:Landroid/filterfw/core/SyncRunner;
    invoke-static {v1}, Landroid/filterfw/core/AsyncRunner;->access$400(Landroid/filterfw/core/AsyncRunner;)Landroid/filterfw/core/SyncRunner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/SyncRunner;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_4
    :goto_0
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    # getter for: Landroid/filterfw/core/AsyncRunner;->mDoneListener:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;
    invoke-static {v1}, Landroid/filterfw/core/AsyncRunner;->access$500(Landroid/filterfw/core/AsyncRunner;)Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 132
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    # getter for: Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z
    invoke-static {v1}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "AsyncRunnerTask"

    const-string v2, "Calling graph done callback."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_5
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    # getter for: Landroid/filterfw/core/AsyncRunner;->mDoneListener:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;
    invoke-static {v1}, Landroid/filterfw/core/AsyncRunner;->access$500(Landroid/filterfw/core/AsyncRunner;)Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    move-result-object v1

    iget v2, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    invoke-interface {v1, v2}, Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;->onRunnerDone(I)V

    .line 135
    :cond_6
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    # getter for: Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z
    invoke-static {v1}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "AsyncRunnerTask"

    const-string v2, "Completed post-execute."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_7
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "exception":Ljava/lang/Exception;
    iput v4, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    .line 128
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    # invokes: Landroid/filterfw/core/AsyncRunner;->setException(Ljava/lang/Exception;)V
    invoke-static {v1, v0}, Landroid/filterfw/core/AsyncRunner;->access$300(Landroid/filterfw/core/AsyncRunner;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->onPostExecute(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V

    return-void
.end method
