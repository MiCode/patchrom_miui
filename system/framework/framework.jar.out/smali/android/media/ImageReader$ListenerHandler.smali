.class final Landroid/media/ImageReader$ListenerHandler;
.super Landroid/os/Handler;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListenerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/ImageReader;


# direct methods
.method public constructor <init>(Landroid/media/ImageReader;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 530
    iput-object p1, p0, Landroid/media/ImageReader$ListenerHandler;->this$0:Landroid/media/ImageReader;

    .line 531
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 532
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 537
    iget-object v1, p0, Landroid/media/ImageReader$ListenerHandler;->this$0:Landroid/media/ImageReader;

    # getter for: Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/ImageReader;->access$300(Landroid/media/ImageReader;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 538
    :try_start_0
    iget-object v1, p0, Landroid/media/ImageReader$ListenerHandler;->this$0:Landroid/media/ImageReader;

    # getter for: Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;
    invoke-static {v1}, Landroid/media/ImageReader;->access$400(Landroid/media/ImageReader;)Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v0

    .line 539
    .local v0, "listener":Landroid/media/ImageReader$OnImageAvailableListener;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    if-eqz v0, :cond_0

    .line 541
    iget-object v1, p0, Landroid/media/ImageReader$ListenerHandler;->this$0:Landroid/media/ImageReader;

    invoke-interface {v0, v1}, Landroid/media/ImageReader$OnImageAvailableListener;->onImageAvailable(Landroid/media/ImageReader;)V

    .line 543
    :cond_0
    return-void

    .line 539
    .end local v0    # "listener":Landroid/media/ImageReader$OnImageAvailableListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
