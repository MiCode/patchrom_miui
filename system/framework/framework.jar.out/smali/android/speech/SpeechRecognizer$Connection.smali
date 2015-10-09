.class Landroid/speech/SpeechRecognizer$Connection;
.super Ljava/lang/Object;
.source "SpeechRecognizer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/SpeechRecognizer;


# direct methods
.method private constructor <init>(Landroid/speech/SpeechRecognizer;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/speech/SpeechRecognizer;Landroid/speech/SpeechRecognizer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/speech/SpeechRecognizer;
    .param p2, "x1"    # Landroid/speech/SpeechRecognizer$1;

    .prologue
    .line 168
    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizer$Connection;-><init>(Landroid/speech/SpeechRecognizer;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 172
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-static {p2}, Landroid/speech/IRecognitionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionService;

    move-result-object v1

    # setter for: Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;
    invoke-static {v0, v1}, Landroid/speech/SpeechRecognizer;->access$502(Landroid/speech/SpeechRecognizer;Landroid/speech/IRecognitionService;)Landroid/speech/IRecognitionService;

    .line 174
    :goto_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    # getter for: Landroid/speech/SpeechRecognizer;->mPendingTasks:Ljava/util/Queue;
    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->access$600(Landroid/speech/SpeechRecognizer;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    # getter for: Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->access$700(Landroid/speech/SpeechRecognizer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    # getter for: Landroid/speech/SpeechRecognizer;->mPendingTasks:Ljava/util/Queue;
    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->access$600(Landroid/speech/SpeechRecognizer;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 177
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    # setter for: Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;
    invoke-static {v0, v1}, Landroid/speech/SpeechRecognizer;->access$502(Landroid/speech/SpeechRecognizer;Landroid/speech/IRecognitionService;)Landroid/speech/IRecognitionService;

    .line 182
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    # setter for: Landroid/speech/SpeechRecognizer;->mConnection:Landroid/speech/SpeechRecognizer$Connection;
    invoke-static {v0, v1}, Landroid/speech/SpeechRecognizer;->access$802(Landroid/speech/SpeechRecognizer;Landroid/speech/SpeechRecognizer$Connection;)Landroid/speech/SpeechRecognizer$Connection;

    .line 183
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    # getter for: Landroid/speech/SpeechRecognizer;->mPendingTasks:Ljava/util/Queue;
    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->access$600(Landroid/speech/SpeechRecognizer;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 185
    return-void
.end method
