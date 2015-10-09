.class Landroid/view/GestureDetector$GestureHandler;
.super Landroid/os/Handler;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Landroid/view/GestureDetector;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    .line 251
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 252
    return-void
.end method

.method constructor <init>(Landroid/view/GestureDetector;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 254
    iput-object p1, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    .line 255
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 256
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 260
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 281
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :pswitch_0
    iget-object v0, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    # getter for: Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;
    invoke-static {v0}, Landroid/view/GestureDetector;->access$100(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnGestureListener;

    move-result-object v0

    iget-object v1, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    # getter for: Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v1}, Landroid/view/GestureDetector;->access$000(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 266
    :pswitch_1
    iget-object v0, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    # invokes: Landroid/view/GestureDetector;->dispatchLongPress()V
    invoke-static {v0}, Landroid/view/GestureDetector;->access$200(Landroid/view/GestureDetector;)V

    goto :goto_0

    .line 271
    :pswitch_2
    iget-object v0, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    # getter for: Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;
    invoke-static {v0}, Landroid/view/GestureDetector;->access$300(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    # getter for: Landroid/view/GestureDetector;->mStillDown:Z
    invoke-static {v0}, Landroid/view/GestureDetector;->access$400(Landroid/view/GestureDetector;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    iget-object v0, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    # getter for: Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;
    invoke-static {v0}, Landroid/view/GestureDetector;->access$300(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    iget-object v1, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    # getter for: Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v1}, Landroid/view/GestureDetector;->access$000(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 275
    :cond_1
    iget-object v0, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    const/4 v1, 0x1

    # setter for: Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z
    invoke-static {v0, v1}, Landroid/view/GestureDetector;->access$502(Landroid/view/GestureDetector;Z)Z

    goto :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
