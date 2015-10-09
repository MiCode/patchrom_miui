.class final Landroid/printservice/PrintService$ServiceHandler;
.super Landroid/os/Handler;
.source "PrintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/printservice/PrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field public static final MSG_CREATE_PRINTER_DISCOVERY_SESSION:I = 0x1

.field public static final MSG_DESTROY_PRINTER_DISCOVERY_SESSION:I = 0x2

.field public static final MSG_ON_PRINTJOB_QUEUED:I = 0x8

.field public static final MSG_ON_REQUEST_CANCEL_PRINTJOB:I = 0x9

.field public static final MSG_SET_CLEINT:I = 0xa

.field public static final MSG_START_PRINTER_DISCOVERY:I = 0x3

.field public static final MSG_START_PRINTER_STATE_TRACKING:I = 0x6

.field public static final MSG_STOP_PRINTER_DISCOVERY:I = 0x4

.field public static final MSG_STOP_PRINTER_STATE_TRACKING:I = 0x7

.field public static final MSG_VALIDATE_PRINTERS:I = 0x5


# instance fields
.field final synthetic this$0:Landroid/printservice/PrintService;


# direct methods
.method public constructor <init>(Landroid/printservice/PrintService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 407
    iput-object p1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    .line 408
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 409
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 414
    iget v0, p1, Landroid/os/Message;->what:I

    .line 415
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 533
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 421
    :pswitch_0
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-virtual {v6}, Landroid/printservice/PrintService;->onCreatePrinterDiscoverySession()Landroid/printservice/PrinterDiscoverySession;

    move-result-object v5

    .line 422
    .local v5, "session":Landroid/printservice/PrinterDiscoverySession;
    if-nez v5, :cond_0

    .line 423
    new-instance v6, Ljava/lang/NullPointerException;

    const-string/jumbo v7, "session cannot be null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 425
    :cond_0
    invoke-virtual {v5}, Landroid/printservice/PrinterDiscoverySession;->getId()I

    move-result v6

    iget-object v7, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mLastSessionId:I
    invoke-static {v7}, Landroid/printservice/PrintService;->access$100(Landroid/printservice/PrintService;)I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 426
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "cannot reuse session instances"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 428
    :cond_1
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # setter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v6, v5}, Landroid/printservice/PrintService;->access$202(Landroid/printservice/PrintService;Landroid/printservice/PrinterDiscoverySession;)Landroid/printservice/PrinterDiscoverySession;

    .line 429
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-virtual {v5}, Landroid/printservice/PrinterDiscoverySession;->getId()I

    move-result v7

    # setter for: Landroid/printservice/PrintService;->mLastSessionId:I
    invoke-static {v6, v7}, Landroid/printservice/PrintService;->access$102(Landroid/printservice/PrintService;I)I

    .line 430
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;
    invoke-static {v6}, Landroid/printservice/PrintService;->access$300(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/printservice/PrinterDiscoverySession;->setObserver(Landroid/printservice/IPrintServiceClient;)V

    .line 536
    .end local v5    # "session":Landroid/printservice/PrinterDiscoverySession;
    :cond_2
    :goto_0
    return-void

    .line 438
    :pswitch_1
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v6}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 439
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v6}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v6

    invoke-virtual {v6}, Landroid/printservice/PrinterDiscoverySession;->destroy()V

    .line 440
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    const/4 v7, 0x0

    # setter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v6, v7}, Landroid/printservice/PrintService;->access$202(Landroid/printservice/PrintService;Landroid/printservice/PrinterDiscoverySession;)Landroid/printservice/PrinterDiscoverySession;

    goto :goto_0

    .line 449
    :pswitch_2
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v6}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 450
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    .line 451
    .local v4, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v6}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/printservice/PrinterDiscoverySession;->startPrinterDiscovery(Ljava/util/List;)V

    goto :goto_0

    .line 460
    .end local v4    # "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :pswitch_3
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v6}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 461
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v6}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v6

    invoke-virtual {v6}, Landroid/printservice/PrinterDiscoverySession;->stopPrinterDiscovery()V

    goto :goto_0

    .line 470
    :pswitch_4
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v6}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 471
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    .line 472
    .local v3, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v6}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/printservice/PrinterDiscoverySession;->validatePrinters(Ljava/util/List;)V

    goto :goto_0

    .line 481
    .end local v3    # "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :pswitch_5
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v6}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 482
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/print/PrinterId;

    .line 483
    .local v2, "printerId":Landroid/print/PrinterId;
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v6}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/printservice/PrinterDiscoverySession;->startPrinterStateTracking(Landroid/print/PrinterId;)V

    goto :goto_0

    .line 492
    .end local v2    # "printerId":Landroid/print/PrinterId;
    :pswitch_6
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v6}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 493
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/print/PrinterId;

    .line 494
    .restart local v2    # "printerId":Landroid/print/PrinterId;
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v6}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/printservice/PrinterDiscoverySession;->stopPrinterStateTracking(Landroid/print/PrinterId;)V

    goto/16 :goto_0

    .line 503
    .end local v2    # "printerId":Landroid/print/PrinterId;
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrintJobInfo;

    .line 504
    .local v1, "printJobInfo":Landroid/print/PrintJobInfo;
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    new-instance v7, Landroid/printservice/PrintJob;

    iget-object v8, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;
    invoke-static {v8}, Landroid/printservice/PrintService;->access$300(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;

    move-result-object v8

    invoke-direct {v7, v1, v8}, Landroid/printservice/PrintJob;-><init>(Landroid/print/PrintJobInfo;Landroid/printservice/IPrintServiceClient;)V

    invoke-virtual {v6, v7}, Landroid/printservice/PrintService;->onRequestCancelPrintJob(Landroid/printservice/PrintJob;)V

    goto/16 :goto_0

    .line 512
    .end local v1    # "printJobInfo":Landroid/print/PrintJobInfo;
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrintJobInfo;

    .line 516
    .restart local v1    # "printJobInfo":Landroid/print/PrintJobInfo;
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    new-instance v7, Landroid/printservice/PrintJob;

    iget-object v8, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;
    invoke-static {v8}, Landroid/printservice/PrintService;->access$300(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;

    move-result-object v8

    invoke-direct {v7, v1, v8}, Landroid/printservice/PrintJob;-><init>(Landroid/print/PrintJobInfo;Landroid/printservice/IPrintServiceClient;)V

    invoke-virtual {v6, v7}, Landroid/printservice/PrintService;->onPrintJobQueued(Landroid/printservice/PrintJob;)V

    goto/16 :goto_0

    .line 524
    .end local v1    # "printJobInfo":Landroid/print/PrintJobInfo;
    :pswitch_9
    iget-object v7, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/printservice/IPrintServiceClient;

    # setter for: Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;
    invoke-static {v7, v6}, Landroid/printservice/PrintService;->access$302(Landroid/printservice/PrintService;Landroid/printservice/IPrintServiceClient;)Landroid/printservice/IPrintServiceClient;

    .line 525
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;
    invoke-static {v6}, Landroid/printservice/PrintService;->access$300(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 526
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-virtual {v6}, Landroid/printservice/PrintService;->onConnected()V

    goto/16 :goto_0

    .line 528
    :cond_3
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-virtual {v6}, Landroid/printservice/PrintService;->onDisconnected()V

    goto/16 :goto_0

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method
