.class Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;
.super Ljava/lang/Object;
.source "CellConnMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/CellConnService/CellConnMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;
    }
.end annotation


# instance fields
.field private mRequstList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceReady:Z

.field private mThreadStarted:Z

.field final synthetic this$0:Lcom/mediatek/CellConnService/CellConnMgr;


# direct methods
.method public constructor <init>(Lcom/mediatek/CellConnService/CellConnMgr;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 279
    iput-object p1, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;->this$0:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;->mRequstList:Ljava/util/ArrayList;

    .line 280
    iput-boolean v1, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;->mThreadStarted:Z

    .line 281
    iput-boolean v1, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;->mServiceReady:Z

    .line 282
    return-void
.end method


# virtual methods
.method public addElem(II)V
    .locals 2
    .parameter "slot"
    .parameter "reqType"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;->mRequstList:Ljava/util/ArrayList;

    new-instance v1, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;-><init>(Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    return-void
.end method

.method public isThreadStarted()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;->mThreadStarted:Z

    return v0
.end method

.method public resetThreadStarted()V
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;->mThreadStarted:Z

    .line 317
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 330
    const-string v3, "CellConnMgr"

    const-string v4, "WorkerThread run"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v3, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;->this$0:Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v4, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;->this$0:Lcom/mediatek/CellConnService/CellConnMgr;

    #getter for: Lcom/mediatek/CellConnService/CellConnMgr;->mCtx:Landroid/content/Context;
    invoke-static {v4}, Lcom/mediatek/CellConnService/CellConnMgr;->access$600(Lcom/mediatek/CellConnService/CellConnMgr;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 340
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :try_start_1
    iget-boolean v3, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;->mServiceReady:Z

    if-nez v3, :cond_0

    .line 342
    const-string v3, "CellConnMgr"

    const-string v4, "WorkerThread wait notify"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-wide/16 v3, 0x2710

    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 345
    :cond_0
    const-string v3, "CellConnMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WorkerThread run current requstList size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;->mRequstList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v3, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;->mRequstList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;

    .line 347
    .local v1, elem:Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;
    const-string v3, "CellConnMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WorkerThread request slot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;->getSlot()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;->getReqType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v3, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;->this$0:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v1}, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;->getSlot()I

    move-result v4

    invoke-virtual {v1}, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;->getReqType()I

    move-result v5

    #calls: Lcom/mediatek/CellConnService/CellConnMgr;->verifyCellState(II)I
    invoke-static {v3, v4, v5}, Lcom/mediatek/CellConnService/CellConnMgr;->access$700(Lcom/mediatek/CellConnService/CellConnMgr;II)I

    goto :goto_0

    .line 350
    .end local v1           #elem:Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "CellConnMgr"

    const-string v4, "WorkerThread wait exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 354
    iget-object v3, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;->this$0:Lcom/mediatek/CellConnService/CellConnMgr;

    const/4 v4, 0x3

    #setter for: Lcom/mediatek/CellConnService/CellConnMgr;->mResult:I
    invoke-static {v3, v4}, Lcom/mediatek/CellConnService/CellConnMgr;->access$002(Lcom/mediatek/CellConnService/CellConnMgr;I)I

    .line 355
    iget-object v3, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;->this$0:Lcom/mediatek/CellConnService/CellConnMgr;

    #getter for: Lcom/mediatek/CellConnService/CellConnMgr;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/CellConnService/CellConnMgr;->access$200(Lcom/mediatek/CellConnService/CellConnMgr;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;->this$0:Lcom/mediatek/CellConnService/CellConnMgr;

    #getter for: Lcom/mediatek/CellConnService/CellConnMgr;->mOnServiceComplete:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/mediatek/CellConnService/CellConnMgr;->access$100(Lcom/mediatek/CellConnService/CellConnMgr;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 357
    .end local v0           #e:Ljava/lang/InterruptedException;
    :goto_1
    return-void

    .line 350
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setServiceReady()V
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;->mServiceReady:Z

    .line 325
    return-void
.end method

.method public setThreadStarted()V
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;->mThreadStarted:Z

    .line 313
    return-void
.end method
