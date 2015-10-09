.class final Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;
.super Landroid/os/Handler;
.source "PrintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_FINISH:I = 0x4

.field public static final MSG_LAYOUT:I = 0x2

.field public static final MSG_START:I = 0x1

.field public static final MSG_WRITE:I = 0x3


# instance fields
.field final synthetic this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;


# direct methods
.method public constructor <init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 751
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    .line 752
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 753
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 757
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    # invokes: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->isFinished()Z
    invoke-static {v1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$200(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 839
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown message: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 763
    :pswitch_0
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    # getter for: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$300(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 764
    :try_start_0
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    # getter for: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;
    invoke-static {v1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$400(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Landroid/print/PrintDocumentAdapter;

    move-result-object v0

    .line 765
    .local v0, "adapter":Landroid/print/PrintDocumentAdapter;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {v0}, Landroid/print/PrintDocumentAdapter;->onStart()V

    goto :goto_0

    .line 765
    .end local v0    # "adapter":Landroid/print/PrintDocumentAdapter;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 776
    :pswitch_1
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    # getter for: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$300(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 777
    :try_start_2
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    # getter for: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;
    invoke-static {v1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$400(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Landroid/print/PrintDocumentAdapter;

    move-result-object v0

    .line 778
    .restart local v0    # "adapter":Landroid/print/PrintDocumentAdapter;
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    # getter for: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;
    invoke-static {v1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$500(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    move-result-object v7

    .line 779
    .local v7, "layoutSpec":Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    const/4 v4, 0x0

    # setter for: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;
    invoke-static {v1, v4}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$502(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;)Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    .line 780
    new-instance v3, Landroid/os/CancellationSignal;

    invoke-direct {v3}, Landroid/os/CancellationSignal;-><init>()V

    .line 781
    .local v3, "cancellation":Landroid/os/CancellationSignal;
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    # setter for: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLayoutOrWriteCancellation:Landroid/os/CancellationSignal;
    invoke-static {v1, v3}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$602(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;

    .line 782
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 784
    if-eqz v7, :cond_0

    if-eqz v0, :cond_0

    .line 788
    iget-object v1, v7, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;->oldAttributes:Landroid/print/PrintAttributes;

    iget-object v2, v7, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;->newAttributes:Landroid/print/PrintAttributes;

    new-instance v4, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;

    iget-object v5, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    iget-object v9, v7, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;->callback:Landroid/print/ILayoutResultCallback;

    iget v10, v7, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;->sequence:I

    invoke-direct {v4, v5, v9, v10}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;-><init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/ILayoutResultCallback;I)V

    iget-object v5, v7, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;->metadata:Landroid/os/Bundle;

    invoke-virtual/range {v0 .. v5}, Landroid/print/PrintDocumentAdapter;->onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V

    goto :goto_0

    .line 782
    .end local v0    # "adapter":Landroid/print/PrintDocumentAdapter;
    .end local v3    # "cancellation":Landroid/os/CancellationSignal;
    .end local v7    # "layoutSpec":Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 800
    :pswitch_2
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    # getter for: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$300(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 801
    :try_start_4
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    # getter for: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;
    invoke-static {v1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$400(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Landroid/print/PrintDocumentAdapter;

    move-result-object v0

    .line 802
    .restart local v0    # "adapter":Landroid/print/PrintDocumentAdapter;
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    # getter for: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;
    invoke-static {v1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$700(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    move-result-object v8

    .line 803
    .local v8, "writeSpec":Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    const/4 v4, 0x0

    # setter for: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;
    invoke-static {v1, v4}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$702(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;)Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    .line 804
    new-instance v3, Landroid/os/CancellationSignal;

    invoke-direct {v3}, Landroid/os/CancellationSignal;-><init>()V

    .line 805
    .restart local v3    # "cancellation":Landroid/os/CancellationSignal;
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    # setter for: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLayoutOrWriteCancellation:Landroid/os/CancellationSignal;
    invoke-static {v1, v3}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$602(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;

    .line 806
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 808
    if-eqz v8, :cond_0

    if-eqz v0, :cond_0

    .line 812
    iget-object v1, v8, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->pages:[Landroid/print/PageRange;

    iget-object v2, v8, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->fd:Landroid/os/ParcelFileDescriptor;

    new-instance v4, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;

    iget-object v5, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    iget-object v9, v8, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->callback:Landroid/print/IWriteResultCallback;

    iget-object v10, v8, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->fd:Landroid/os/ParcelFileDescriptor;

    iget v11, v8, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->sequence:I

    invoke-direct {v4, v5, v9, v10, v11}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;-><init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/IWriteResultCallback;Landroid/os/ParcelFileDescriptor;I)V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/print/PrintDocumentAdapter;->onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    goto/16 :goto_0

    .line 806
    .end local v0    # "adapter":Landroid/print/PrintDocumentAdapter;
    .end local v3    # "cancellation":Landroid/os/CancellationSignal;
    .end local v8    # "writeSpec":Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    .line 824
    :pswitch_3
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    # getter for: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$300(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 825
    :try_start_6
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    # getter for: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;
    invoke-static {v1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$400(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Landroid/print/PrintDocumentAdapter;

    move-result-object v0

    .line 826
    .restart local v0    # "adapter":Landroid/print/PrintDocumentAdapter;
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    # getter for: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$800(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Landroid/app/Activity;

    move-result-object v6

    .line 827
    .local v6, "activity":Landroid/app/Activity;
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    # invokes: Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->clearLocked()V
    invoke-static {v1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$900(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)V

    .line 828
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 829
    if-eqz v0, :cond_2

    .line 830
    invoke-virtual {v0}, Landroid/print/PrintDocumentAdapter;->onFinish()V

    .line 832
    :cond_2
    if-eqz v6, :cond_0

    .line 833
    invoke-virtual {v6}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-virtual {v1, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto/16 :goto_0

    .line 828
    .end local v0    # "adapter":Landroid/print/PrintDocumentAdapter;
    .end local v6    # "activity":Landroid/app/Activity;
    :catchall_3
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1

    .line 760
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
