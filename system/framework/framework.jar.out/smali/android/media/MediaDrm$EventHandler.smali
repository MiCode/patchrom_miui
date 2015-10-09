.class Landroid/media/MediaDrm$EventHandler;
.super Landroid/os/Handler;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaDrm:Landroid/media/MediaDrm;

.field final synthetic this$0:Landroid/media/MediaDrm;


# direct methods
.method public constructor <init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm;Landroid/os/Looper;)V
    .locals 0
    .param p2, "md"    # Landroid/media/MediaDrm;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 226
    iput-object p1, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    .line 227
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 228
    iput-object p2, p0, Landroid/media/MediaDrm$EventHandler;->mMediaDrm:Landroid/media/MediaDrm;

    .line 229
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 233
    iget-object v0, p0, Landroid/media/MediaDrm$EventHandler;->mMediaDrm:Landroid/media/MediaDrm;

    # getter for: Landroid/media/MediaDrm;->mNativeContext:I
    invoke-static {v0}, Landroid/media/MediaDrm;->access$000(Landroid/media/MediaDrm;)I

    move-result v0

    if-nez v0, :cond_1

    .line 234
    const-string v0, "MediaDrm"

    const-string v1, "MediaDrm went away with unhandled events"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 259
    const-string v0, "MediaDrm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    :pswitch_0
    const-string v0, "MediaDrm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drm event ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    # getter for: Landroid/media/MediaDrm;->mOnEventListener:Landroid/media/MediaDrm$OnEventListener;
    invoke-static {v0}, Landroid/media/MediaDrm;->access$100(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Parcel;

    if-eqz v0, :cond_0

    .line 244
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Parcel;

    .line 245
    .local v6, "parcel":Landroid/os/Parcel;
    invoke-virtual {v6}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 246
    .local v2, "sessionId":[B
    array-length v0, v2

    if-nez v0, :cond_2

    .line 247
    const/4 v2, 0x0

    .line 249
    :cond_2
    invoke-virtual {v6}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 250
    .local v5, "data":[B
    array-length v0, v5

    if-nez v0, :cond_3

    .line 251
    const/4 v5, 0x0

    .line 253
    :cond_3
    iget-object v0, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    # getter for: Landroid/media/MediaDrm;->mOnEventListener:Landroid/media/MediaDrm$OnEventListener;
    invoke-static {v0}, Landroid/media/MediaDrm;->access$100(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnEventListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaDrm$EventHandler;->mMediaDrm:Landroid/media/MediaDrm;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface/range {v0 .. v5}, Landroid/media/MediaDrm$OnEventListener;->onEvent(Landroid/media/MediaDrm;[BII[B)V

    goto/16 :goto_0

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
