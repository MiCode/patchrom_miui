.class Landroid/media/audiofx/AudioEffect$NativeEventHandler;
.super Landroid/os/Handler;
.source "AudioEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/AudioEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandler"
.end annotation


# instance fields
.field private mAudioEffect:Landroid/media/audiofx/AudioEffect;

.field final synthetic this$0:Landroid/media/audiofx/AudioEffect;


# direct methods
.method public constructor <init>(Landroid/media/audiofx/AudioEffect;Landroid/media/audiofx/AudioEffect;Landroid/os/Looper;)V
    .locals 0
    .param p2, "ae"    # Landroid/media/audiofx/AudioEffect;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1129
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    .line 1130
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1131
    iput-object p2, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    .line 1132
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1136
    iget-object v12, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    if-nez v12, :cond_1

    .line 1189
    :cond_0
    :goto_0
    return-void

    .line 1139
    :cond_1
    iget v12, p1, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_0

    .line 1186
    const-string v10, "AudioEffect-JAVA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleMessage() Unknown event type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1141
    :pswitch_0
    const/4 v1, 0x0

    .line 1142
    .local v1, "enableStatusChangeListener":Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    iget-object v12, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    iget-object v12, v12, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1143
    :try_start_0
    iget-object v13, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    # getter for: Landroid/media/audiofx/AudioEffect;->mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    invoke-static {v13}, Landroid/media/audiofx/AudioEffect;->access$000(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    move-result-object v1

    .line 1144
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1145
    if-eqz v1, :cond_0

    .line 1146
    iget-object v12, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    iget v13, p1, Landroid/os/Message;->arg1:I

    if-eqz v13, :cond_2

    :goto_1
    invoke-interface {v1, v12, v10}, Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;->onEnableStatusChange(Landroid/media/audiofx/AudioEffect;Z)V

    goto :goto_0

    .line 1144
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    :cond_2
    move v10, v11

    .line 1146
    goto :goto_1

    .line 1151
    .end local v1    # "enableStatusChangeListener":Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    :pswitch_1
    const/4 v0, 0x0

    .line 1152
    .local v0, "controlStatusChangeListener":Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    iget-object v12, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    iget-object v12, v12, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1153
    :try_start_2
    iget-object v13, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    # getter for: Landroid/media/audiofx/AudioEffect;->mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    invoke-static {v13}, Landroid/media/audiofx/AudioEffect;->access$100(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    move-result-object v0

    .line 1154
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1155
    if-eqz v0, :cond_0

    .line 1156
    iget-object v12, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    iget v13, p1, Landroid/os/Message;->arg1:I

    if-eqz v13, :cond_3

    :goto_2
    invoke-interface {v0, v12, v10}, Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;->onControlStatusChange(Landroid/media/audiofx/AudioEffect;Z)V

    goto :goto_0

    .line 1154
    :catchall_1
    move-exception v10

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v10

    :cond_3
    move v10, v11

    .line 1156
    goto :goto_2

    .line 1161
    .end local v0    # "controlStatusChangeListener":Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    :pswitch_2
    const/4 v4, 0x0

    .line 1162
    .local v4, "parameterChangeListener":Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;
    iget-object v10, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    iget-object v12, v10, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1163
    :try_start_4
    iget-object v10, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    # getter for: Landroid/media/audiofx/AudioEffect;->mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;
    invoke-static {v10}, Landroid/media/audiofx/AudioEffect;->access$200(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    move-result-object v4

    .line 1164
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1165
    if-eqz v4, :cond_0

    .line 1168
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 1169
    .local v7, "vOffset":I
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, [B

    move-object v2, v10

    check-cast v2, [B

    .line 1172
    .local v2, "p":[B
    iget-object v10, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v10, v2, v11}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v6

    .line 1173
    .local v6, "status":I
    iget-object v10, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    const/4 v12, 0x4

    invoke-virtual {v10, v2, v12}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v5

    .line 1174
    .local v5, "psize":I
    iget-object v10, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    const/16 v12, 0x8

    invoke-virtual {v10, v2, v12}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v9

    .line 1175
    .local v9, "vsize":I
    new-array v3, v5, [B

    .line 1176
    .local v3, "param":[B
    new-array v8, v9, [B

    .line 1177
    .local v8, "value":[B
    const/16 v10, 0xc

    invoke-static {v2, v10, v3, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1178
    invoke-static {v2, v7, v8, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1180
    iget-object v10, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-interface {v4, v10, v6, v3, v8}, Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V

    goto/16 :goto_0

    .line 1164
    .end local v2    # "p":[B
    .end local v3    # "param":[B
    .end local v5    # "psize":I
    .end local v6    # "status":I
    .end local v7    # "vOffset":I
    .end local v8    # "value":[B
    .end local v9    # "vsize":I
    :catchall_2
    move-exception v10

    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v10

    .line 1139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
