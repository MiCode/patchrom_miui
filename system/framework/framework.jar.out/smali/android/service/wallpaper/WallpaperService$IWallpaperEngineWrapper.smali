.class Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;
.super Landroid/service/wallpaper/IWallpaperEngine$Stub;
.source "WallpaperService.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IWallpaperEngineWrapper"
.end annotation


# instance fields
.field private final mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mConnection:Landroid/service/wallpaper/IWallpaperConnection;

.field mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

.field final mIsPreview:Z

.field mReqHeight:I

.field mReqWidth:I

.field mShownReported:Z

.field final mWindowToken:Landroid/os/IBinder;

.field final mWindowType:I

.field final synthetic this$0:Landroid/service/wallpaper/WallpaperService;


# direct methods
.method constructor <init>(Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZII)V
    .locals 4
    .param p2, "context"    # Landroid/service/wallpaper/WallpaperService;
    .param p3, "conn"    # Landroid/service/wallpaper/IWallpaperConnection;
    .param p4, "windowToken"    # Landroid/os/IBinder;
    .param p5, "windowType"    # I
    .param p6, "isPreview"    # Z
    .param p7, "reqWidth"    # I
    .param p8, "reqHeight"    # I

    .prologue
    .line 963
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;-><init>()V

    .line 964
    new-instance v1, Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {p2}, Landroid/service/wallpaper/WallpaperService;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p2, v2, p0, v3}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 965
    iput-object p3, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    .line 966
    iput-object p4, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    .line 967
    iput p5, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowType:I

    .line 968
    iput-boolean p6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    .line 969
    iput p7, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    .line 970
    iput p8, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    .line 972
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 973
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 974
    return-void
.end method

.method static synthetic access$100(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)Lcom/android/internal/os/HandlerCaller;
    .locals 1
    .param p0, "x0"    # Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .prologue
    .line 947
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 1015
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1016
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 1017
    return-void
.end method

.method public dispatchPointer(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 988
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    # invokes: Landroid/service/wallpaper/WallpaperService$Engine;->dispatchPointer(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->access$000(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/MotionEvent;)V

    .line 993
    :goto_0
    return-void

    .line 991
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0
.end method

.method public dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 997
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/view/BaseIWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    .line 1000
    :cond_0
    return-void
.end method

.method public executeMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1020
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 1086
    const-string v6, "WallpaperService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown message type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :goto_0
    :sswitch_0
    return-void

    .line 1023
    :sswitch_1
    :try_start_0
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    invoke-interface {v6, p0}, Landroid/service/wallpaper/IWallpaperConnection;->attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1028
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v6}, Landroid/service/wallpaper/WallpaperService;->onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;

    move-result-object v2

    .line 1029
    .local v2, "engine":Landroid/service/wallpaper/WallpaperService$Engine;
    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    .line 1030
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    # getter for: Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/service/wallpaper/WallpaperService;->access$200(Landroid/service/wallpaper/WallpaperService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1031
    invoke-virtual {v2, p0}, Landroid/service/wallpaper/WallpaperService$Engine;->attach(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)V

    goto :goto_0

    .line 1024
    .end local v2    # "engine":Landroid/service/wallpaper/WallpaperService$Engine;
    :catch_0
    move-exception v1

    .line 1025
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "WallpaperService"

    const-string v7, "Wallpaper host disappeared"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1035
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_2
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    # getter for: Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/service/wallpaper/WallpaperService;->access$200(Landroid/service/wallpaper/WallpaperService;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1036
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v6}, Landroid/service/wallpaper/WallpaperService$Engine;->detach()V

    goto :goto_0

    .line 1040
    :sswitch_3
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7, v8}, Landroid/service/wallpaper/WallpaperService$Engine;->doDesiredSizeChanged(II)V

    goto :goto_0

    .line 1044
    :sswitch_4
    iget-object v8, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v8, v6, v7, v7}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    goto :goto_0

    .line 1049
    :sswitch_5
    iget-object v8, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_0

    :goto_1
    invoke-virtual {v8, v6}, Landroid/service/wallpaper/WallpaperService$Engine;->doVisibilityChanged(Z)V

    goto :goto_0

    :cond_0
    move v6, v7

    goto :goto_1

    .line 1052
    :sswitch_6
    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v7, v6}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    goto :goto_0

    .line 1055
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;

    .line 1056
    .local v0, "cmd":Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v6, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doCommand(Landroid/service/wallpaper/WallpaperService$WallpaperCommand;)V

    goto :goto_0

    .line 1059
    .end local v0    # "cmd":Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
    :sswitch_8
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_1

    move v4, v6

    .line 1060
    .local v4, "reportDraw":Z
    :goto_2
    iget-object v8, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v8, v6, v7, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 1061
    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v7, v6}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    goto :goto_0

    .end local v4    # "reportDraw":Z
    :cond_1
    move v4, v7

    .line 1059
    goto :goto_2

    .line 1067
    :sswitch_9
    const/4 v5, 0x0

    .line 1068
    .local v5, "skip":Z
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/MotionEvent;

    .line 1069
    .local v3, "ev":Landroid/view/MotionEvent;
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 1070
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v7, v6, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1071
    :try_start_1
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v6, v6, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    if-ne v6, v3, :cond_4

    .line 1072
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    const/4 v8, 0x0

    iput-object v8, v6, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    .line 1077
    :goto_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1079
    :cond_2
    if-nez v5, :cond_3

    .line 1081
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v6, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1083
    :cond_3
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    .line 1075
    :cond_4
    const/4 v5, 0x1

    goto :goto_3

    .line 1077
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1020
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0x14 -> :sswitch_2
        0x1e -> :sswitch_3
        0x2710 -> :sswitch_4
        0x271a -> :sswitch_5
        0x2724 -> :sswitch_6
        0x2729 -> :sswitch_7
        0x272e -> :sswitch_8
        0x2733 -> :sswitch_0
        0x2738 -> :sswitch_9
    .end sparse-switch
.end method

.method public reportShown()V
    .locals 3

    .prologue
    .line 1003
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    if-nez v1, :cond_0

    .line 1004
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    .line 1006
    :try_start_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    invoke-interface {v1, p0}, Landroid/service/wallpaper/IWallpaperConnection;->engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    :cond_0
    :goto_0
    return-void

    .line 1007
    :catch_0
    move-exception v0

    .line 1008
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WallpaperService"

    const-string v2, "Wallpaper host disappeared"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDesiredSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 977
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    .line 978
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 979
    return-void
.end method

.method public setVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 982
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x271a

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .line 984
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 985
    return-void

    .line 982
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
