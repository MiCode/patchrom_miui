.class Landroid/speech/tts/TextToSpeech$Connection;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/speech/tts/ITextToSpeechCallback$Stub;

.field private mEstablished:Z

.field private mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

.field private mService:Landroid/speech/tts/ITextToSpeechService;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeech;


# direct methods
.method private constructor <init>(Landroid/speech/tts/TextToSpeech;)V
    .locals 1

    .prologue
    .line 1438
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1445
    new-instance v0, Landroid/speech/tts/TextToSpeech$Connection$1;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$Connection$1;-><init>(Landroid/speech/tts/TextToSpeech$Connection;)V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mCallback:Landroid/speech/tts/ITextToSpeechCallback$Stub;

    .line 1471
    return-void
.end method

.method synthetic constructor <init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/speech/tts/TextToSpeech;
    .param p2, "x1"    # Landroid/speech/tts/TextToSpeech$1;

    .prologue
    .line 1438
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeech$Connection;-><init>(Landroid/speech/tts/TextToSpeech;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/ITextToSpeechCallback$Stub;
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech$Connection;

    .prologue
    .line 1438
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mCallback:Landroid/speech/tts/ITextToSpeechCallback$Stub;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/ITextToSpeechService;
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech$Connection;

    .prologue
    .line 1438
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mService:Landroid/speech/tts/ITextToSpeechService;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech$Connection;

    .prologue
    .line 1438
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/speech/tts/TextToSpeech$Connection;Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;)Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;
    .locals 0
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech$Connection;
    .param p1, "x1"    # Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    .prologue
    .line 1438
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    return-object p1
.end method

.method static synthetic access$1302(Landroid/speech/tts/TextToSpeech$Connection;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech$Connection;
    .param p1, "x1"    # Z

    .prologue
    .line 1438
    iput-boolean p1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mEstablished:Z

    return p1
.end method

.method private clearServiceConnection()Z
    .locals 4

    .prologue
    .line 1544
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    # getter for: Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->access$900(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1545
    const/4 v0, 0x0

    .line 1546
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    if-eqz v1, :cond_0

    .line 1547
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->cancel(Z)Z

    move-result v0

    .line 1548
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    .line 1551
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mService:Landroid/speech/tts/ITextToSpeechService;

    .line 1553
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    # getter for: Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->access$200(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$Connection;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 1554
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    const/4 v3, 0x0

    # setter for: Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;
    invoke-static {v1, v3}, Landroid/speech/tts/TextToSpeech;->access$202(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/TextToSpeech$Connection;

    .line 1556
    :cond_1
    monitor-exit v2

    return v0

    .line 1557
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    .prologue
    .line 1575
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    # getter for: Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->access$1600(Landroid/speech/tts/TextToSpeech;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1576
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech$Connection;->clearServiceConnection()Z

    .line 1577
    return-void
.end method

.method public getCallerIdentity()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1535
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mCallback:Landroid/speech/tts/ITextToSpeechCallback$Stub;

    return-object v0
.end method

.method public isEstablished()Z
    .locals 1

    .prologue
    .line 1580
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mService:Landroid/speech/tts/ITextToSpeechService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mEstablished:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1516
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    # getter for: Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->access$900(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1517
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    # setter for: Landroid/speech/tts/TextToSpeech;->mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;
    invoke-static {v0, v2}, Landroid/speech/tts/TextToSpeech;->access$1502(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/TextToSpeech$Connection;

    .line 1519
    const-string v0, "TextToSpeech"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    if-eqz v0, :cond_0

    .line 1522
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->cancel(Z)Z

    .line 1525
    :cond_0
    invoke-static {p2}, Landroid/speech/tts/ITextToSpeechService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/tts/ITextToSpeechService;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mService:Landroid/speech/tts/ITextToSpeechService;

    .line 1526
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    # setter for: Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;
    invoke-static {v0, p0}, Landroid/speech/tts/TextToSpeech;->access$202(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/TextToSpeech$Connection;

    .line 1528
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mEstablished:Z

    .line 1529
    new-instance v0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    invoke-direct {v0, p0, p1}, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;-><init>(Landroid/speech/tts/TextToSpeech$Connection;Landroid/content/ComponentName;)V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    .line 1530
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1531
    monitor-exit v1

    .line 1532
    return-void

    .line 1531
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1562
    const-string v0, "TextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asked to disconnect from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech$Connection;->clearServiceConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1570
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    const/4 v1, -0x1

    # invokes: Landroid/speech/tts/TextToSpeech;->dispatchOnInit(I)V
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->access$1400(Landroid/speech/tts/TextToSpeech;I)V

    .line 1572
    :cond_0
    return-void
.end method

.method public runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;
    .locals 5
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "reconnect"    # Z
    .param p5, "onlyEstablishedConnection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/speech/tts/TextToSpeech$Action",
            "<TR;>;TR;",
            "Ljava/lang/String;",
            "ZZ)TR;"
        }
    .end annotation

    .prologue
    .line 1585
    .local p1, "action":Landroid/speech/tts/TextToSpeech$Action;, "Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .local p2, "errorResult":Ljava/lang/Object;, "TR;"
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    # getter for: Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->access$900(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1587
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mService:Landroid/speech/tts/ITextToSpeechService;

    if-nez v1, :cond_0

    .line 1588
    const-string v1, "TextToSpeech"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed: not connected to TTS engine"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1589
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1602
    .end local p2    # "errorResult":Ljava/lang/Object;, "TR;"
    :goto_0
    return-object p2

    .line 1591
    .restart local p2    # "errorResult":Ljava/lang/Object;, "TR;"
    :cond_0
    if-eqz p5, :cond_1

    :try_start_2
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech$Connection;->isEstablished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1592
    const-string v1, "TextToSpeech"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed: TTS engine connection not fully set up"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1593
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 1604
    .end local p2    # "errorResult":Ljava/lang/Object;, "TR;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 1595
    .restart local p2    # "errorResult":Ljava/lang/Object;, "TR;"
    :cond_1
    :try_start_4
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mService:Landroid/speech/tts/ITextToSpeechService;

    invoke-interface {p1, v1}, Landroid/speech/tts/TextToSpeech$Action;->run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object p2

    .end local p2    # "errorResult":Ljava/lang/Object;, "TR;"
    :try_start_5
    monitor-exit v2

    goto :goto_0

    .line 1596
    .restart local p2    # "errorResult":Ljava/lang/Object;, "TR;"
    :catch_0
    move-exception v0

    .line 1597
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TextToSpeech"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1598
    if-eqz p4, :cond_2

    .line 1599
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech$Connection;->disconnect()V

    .line 1600
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    # invokes: Landroid/speech/tts/TextToSpeech;->initTts()I
    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->access$1700(Landroid/speech/tts/TextToSpeech;)I

    .line 1602
    :cond_2
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method
