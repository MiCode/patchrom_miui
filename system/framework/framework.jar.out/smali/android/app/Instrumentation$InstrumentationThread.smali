.class final Landroid/app/Instrumentation$InstrumentationThread;
.super Ljava/lang/Thread;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InstrumentationThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1688
    iput-object p1, p0, Landroid/app/Instrumentation$InstrumentationThread;->this$0:Landroid/app/Instrumentation;

    .line 1689
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1690
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1693
    const/4 v1, -0x8

    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1698
    :goto_0
    iget-object v1, p0, Landroid/app/Instrumentation$InstrumentationThread;->this$0:Landroid/app/Instrumentation;

    # getter for: Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z
    invoke-static {v1}, Landroid/app/Instrumentation;->access$100(Landroid/app/Instrumentation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1699
    iget-object v1, p0, Landroid/app/Instrumentation$InstrumentationThread;->this$0:Landroid/app/Instrumentation;

    invoke-virtual {v1}, Landroid/app/Instrumentation;->startPerformanceSnapshot()V

    .line 1701
    :cond_0
    iget-object v1, p0, Landroid/app/Instrumentation$InstrumentationThread;->this$0:Landroid/app/Instrumentation;

    invoke-virtual {v1}, Landroid/app/Instrumentation;->onStart()V

    .line 1702
    return-void

    .line 1694
    :catch_0
    move-exception v0

    .line 1695
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "Instrumentation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception setting priority of instrumentation thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
