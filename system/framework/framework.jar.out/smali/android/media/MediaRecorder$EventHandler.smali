.class Landroid/media/MediaRecorder$EventHandler;
.super Landroid/os/Handler;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field private static final MEDIA_RECORDER_EVENT_ERROR:I = 0x1

.field private static final MEDIA_RECORDER_EVENT_INFO:I = 0x2

.field private static final MEDIA_RECORDER_EVENT_LIST_END:I = 0x63

.field private static final MEDIA_RECORDER_EVENT_LIST_START:I = 0x1

.field private static final MEDIA_RECORDER_TRACK_EVENT_ERROR:I = 0x64

.field private static final MEDIA_RECORDER_TRACK_EVENT_INFO:I = 0x65

.field private static final MEDIA_RECORDER_TRACK_EVENT_LIST_END:I = 0x3e8

.field private static final MEDIA_RECORDER_TRACK_EVENT_LIST_START:I = 0x64


# instance fields
.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field final synthetic this$0:Landroid/media/MediaRecorder;


# direct methods
.method public constructor <init>(Landroid/media/MediaRecorder;Landroid/media/MediaRecorder;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mr"    # Landroid/media/MediaRecorder;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 925
    iput-object p1, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    .line 926
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 927
    iput-object p2, p0, Landroid/media/MediaRecorder$EventHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 928
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 947
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    # getter for: Landroid/media/MediaRecorder;->mNativeContext:I
    invoke-static {v0}, Landroid/media/MediaRecorder;->access$000(Landroid/media/MediaRecorder;)I

    move-result v0

    if-nez v0, :cond_1

    .line 948
    const-string v0, "MediaRecorder"

    const-string/jumbo v1, "mediarecorder went away with unhandled events"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 951
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 967
    const-string v0, "MediaRecorder"

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

    goto :goto_0

    .line 954
    :sswitch_0
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    # getter for: Landroid/media/MediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;
    invoke-static {v0}, Landroid/media/MediaRecorder;->access$100(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    # getter for: Landroid/media/MediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;
    invoke-static {v0}, Landroid/media/MediaRecorder;->access$100(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRecorder$EventHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaRecorder$OnErrorListener;->onError(Landroid/media/MediaRecorder;II)V

    goto :goto_0

    .line 961
    :sswitch_1
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    # getter for: Landroid/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;
    invoke-static {v0}, Landroid/media/MediaRecorder;->access$200(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    # getter for: Landroid/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;
    invoke-static {v0}, Landroid/media/MediaRecorder;->access$200(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRecorder$EventHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaRecorder$OnInfoListener;->onInfo(Landroid/media/MediaRecorder;II)V

    goto :goto_0

    .line 951
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
    .end sparse-switch
.end method
