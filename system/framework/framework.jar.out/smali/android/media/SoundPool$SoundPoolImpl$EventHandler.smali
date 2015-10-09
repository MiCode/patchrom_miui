.class Landroid/media/SoundPool$SoundPoolImpl$EventHandler;
.super Landroid/os/Handler;
.source "SoundPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SoundPool$SoundPoolImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mSoundPool:Landroid/media/SoundPool;

.field final synthetic this$0:Landroid/media/SoundPool$SoundPoolImpl;


# direct methods
.method public constructor <init>(Landroid/media/SoundPool$SoundPoolImpl;Landroid/media/SoundPool;Landroid/os/Looper;)V
    .locals 0
    .param p2, "soundPool"    # Landroid/media/SoundPool;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 576
    iput-object p1, p0, Landroid/media/SoundPool$SoundPoolImpl$EventHandler;->this$0:Landroid/media/SoundPool$SoundPoolImpl;

    .line 577
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 578
    iput-object p2, p0, Landroid/media/SoundPool$SoundPoolImpl$EventHandler;->mSoundPool:Landroid/media/SoundPool;

    .line 579
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 583
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 593
    const-string v0, "SoundPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :goto_0
    return-void

    .line 586
    :pswitch_0
    iget-object v0, p0, Landroid/media/SoundPool$SoundPoolImpl$EventHandler;->this$0:Landroid/media/SoundPool$SoundPoolImpl;

    # getter for: Landroid/media/SoundPool$SoundPoolImpl;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/SoundPool$SoundPoolImpl;->access$000(Landroid/media/SoundPool$SoundPoolImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 587
    :try_start_0
    iget-object v0, p0, Landroid/media/SoundPool$SoundPoolImpl$EventHandler;->this$0:Landroid/media/SoundPool$SoundPoolImpl;

    # getter for: Landroid/media/SoundPool$SoundPoolImpl;->mOnLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;
    invoke-static {v0}, Landroid/media/SoundPool$SoundPoolImpl;->access$100(Landroid/media/SoundPool$SoundPoolImpl;)Landroid/media/SoundPool$OnLoadCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Landroid/media/SoundPool$SoundPoolImpl$EventHandler;->this$0:Landroid/media/SoundPool$SoundPoolImpl;

    # getter for: Landroid/media/SoundPool$SoundPoolImpl;->mOnLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;
    invoke-static {v0}, Landroid/media/SoundPool$SoundPoolImpl;->access$100(Landroid/media/SoundPool$SoundPoolImpl;)Landroid/media/SoundPool$OnLoadCompleteListener;

    move-result-object v0

    iget-object v2, p0, Landroid/media/SoundPool$SoundPoolImpl$EventHandler;->mSoundPool:Landroid/media/SoundPool;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v2, v3, v4}, Landroid/media/SoundPool$OnLoadCompleteListener;->onLoadComplete(Landroid/media/SoundPool;II)V

    .line 590
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 583
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
