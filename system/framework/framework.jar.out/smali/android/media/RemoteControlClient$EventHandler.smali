.class Landroid/media/RemoteControlClient$EventHandler;
.super Landroid/os/Handler;
.source "RemoteControlClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteControlClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteControlClient;


# direct methods
.method public constructor <init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V
    .locals 0
    .param p2, "rcc"    # Landroid/media/RemoteControlClient;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1242
    iput-object p1, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    .line 1243
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1244
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1248
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1307
    const-string v0, "RemoteControlClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in RemoteControlClient handler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :goto_0
    return-void

    .line 1250
    :pswitch_0
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$000(Landroid/media/RemoteControlClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1251
    :try_start_0
    iget-object v2, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/IRemoteControlDisplay;

    # invokes: Landroid/media/RemoteControlClient;->sendPlaybackState_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V
    invoke-static {v2, v0}, Landroid/media/RemoteControlClient;->access$800(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V

    .line 1252
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1255
    :pswitch_1
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$000(Landroid/media/RemoteControlClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1256
    :try_start_1
    iget-object v2, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/IRemoteControlDisplay;

    # invokes: Landroid/media/RemoteControlClient;->sendMetadata_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V
    invoke-static {v2, v0}, Landroid/media/RemoteControlClient;->access$400(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V

    .line 1257
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 1260
    :pswitch_2
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$000(Landroid/media/RemoteControlClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1261
    :try_start_2
    iget-object v2, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/IRemoteControlDisplay;

    # invokes: Landroid/media/RemoteControlClient;->sendTransportControlInfo_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V
    invoke-static {v2, v0}, Landroid/media/RemoteControlClient;->access$900(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V

    .line 1262
    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 1265
    :pswitch_3
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$000(Landroid/media/RemoteControlClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1266
    :try_start_3
    iget-object v2, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/IRemoteControlDisplay;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/media/RemoteControlClient;->sendArtwork_syncCacheLock(Landroid/media/IRemoteControlDisplay;II)V
    invoke-static {v2, v0, v3, v4}, Landroid/media/RemoteControlClient;->access$500(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V

    .line 1268
    monitor-exit v1

    goto :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    .line 1271
    :pswitch_4
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$000(Landroid/media/RemoteControlClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1272
    :try_start_4
    iget-object v2, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/IRemoteControlDisplay;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/media/RemoteControlClient;->sendMetadataWithArtwork_syncCacheLock(Landroid/media/IRemoteControlDisplay;II)V
    invoke-static {v2, v0, v3, v4}, Landroid/media/RemoteControlClient;->access$300(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V

    .line 1274
    monitor-exit v1

    goto :goto_0

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    .line 1277
    :pswitch_5
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Landroid/media/RemoteControlClient;->onNewInternalClientGen(I)V
    invoke-static {v0, v1}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;I)V

    goto :goto_0

    .line 1280
    :pswitch_6
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Landroid/media/RemoteControlClient;->onNewCurrentClientGen(I)V
    invoke-static {v0, v1}, Landroid/media/RemoteControlClient;->access$1100(Landroid/media/RemoteControlClient;I)V

    goto/16 :goto_0

    .line 1283
    :pswitch_7
    iget-object v1, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/IRemoteControlDisplay;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/media/RemoteControlClient;->onPlugDisplay(Landroid/media/IRemoteControlDisplay;II)V
    invoke-static {v1, v0, v2, v3}, Landroid/media/RemoteControlClient;->access$1200(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V

    goto/16 :goto_0

    .line 1286
    :pswitch_8
    iget-object v1, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/IRemoteControlDisplay;

    # invokes: Landroid/media/RemoteControlClient;->onUnplugDisplay(Landroid/media/IRemoteControlDisplay;)V
    invoke-static {v1, v0}, Landroid/media/RemoteControlClient;->access$1300(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V

    goto/16 :goto_0

    .line 1289
    :pswitch_9
    iget-object v1, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/IRemoteControlDisplay;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/media/RemoteControlClient;->onUpdateDisplayArtworkSize(Landroid/media/IRemoteControlDisplay;II)V
    invoke-static {v1, v0, v2, v3}, Landroid/media/RemoteControlClient;->access$1400(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V

    goto/16 :goto_0

    .line 1292
    :pswitch_a
    iget-object v1, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    # invokes: Landroid/media/RemoteControlClient;->onSeekTo(IJ)V
    invoke-static {v1, v2, v3, v4}, Landroid/media/RemoteControlClient;->access$1500(Landroid/media/RemoteControlClient;IJ)V

    goto/16 :goto_0

    .line 1295
    :pswitch_b
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    # invokes: Landroid/media/RemoteControlClient;->onPositionDriftCheck()V
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1600(Landroid/media/RemoteControlClient;)V

    goto/16 :goto_0

    .line 1298
    :pswitch_c
    iget-object v3, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/IRemoteControlDisplay;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_0

    :goto_1
    # invokes: Landroid/media/RemoteControlClient;->onDisplayWantsSync(Landroid/media/IRemoteControlDisplay;Z)V
    invoke-static {v3, v0, v1}, Landroid/media/RemoteControlClient;->access$1700(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;Z)V

    goto/16 :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 1301
    :pswitch_d
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    # invokes: Landroid/media/RemoteControlClient;->onUpdateMetadata(IILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/RemoteControlClient;->access$1800(Landroid/media/RemoteControlClient;IILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1304
    :pswitch_e
    iget-object v3, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/IRemoteControlDisplay;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_1

    :goto_2
    # invokes: Landroid/media/RemoteControlClient;->onDisplayEnable(Landroid/media/IRemoteControlDisplay;Z)V
    invoke-static {v3, v0, v1}, Landroid/media/RemoteControlClient;->access$1900(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;Z)V

    goto/16 :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    .line 1248
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_4
        :pswitch_e
    .end packed-switch
.end method
