.class public Landroid/speech/RecognitionService$Callback;
.super Ljava/lang/Object;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Callback"
.end annotation


# instance fields
.field private final mListener:Landroid/speech/IRecognitionListener;

.field final synthetic this$0:Landroid/speech/RecognitionService;


# direct methods
.method private constructor <init>(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V
    .locals 0
    .param p2, "listener"    # Landroid/speech/IRecognitionListener;

    .prologue
    .line 218
    iput-object p1, p0, Landroid/speech/RecognitionService$Callback;->this$0:Landroid/speech/RecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p2, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    .line 220
    return-void
.end method

.method synthetic constructor <init>(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;Landroid/speech/RecognitionService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/speech/RecognitionService;
    .param p2, "x1"    # Landroid/speech/IRecognitionListener;
    .param p3, "x2"    # Landroid/speech/RecognitionService$1;

    .prologue
    .line 215
    invoke-direct {p0, p1, p2}, Landroid/speech/RecognitionService$Callback;-><init>(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V

    return-void
.end method

.method static synthetic access$500(Landroid/speech/RecognitionService$Callback;)Landroid/speech/IRecognitionListener;
    .locals 1
    .param p0, "x0"    # Landroid/speech/RecognitionService$Callback;

    .prologue
    .line 215
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    return-object v0
.end method


# virtual methods
.method public beginningOfSpeech()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0}, Landroid/speech/IRecognitionListener;->onBeginningOfSpeech()V

    .line 228
    return-void
.end method

.method public bufferReceived([B)V
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onBufferReceived([B)V

    .line 239
    return-void
.end method

.method public endOfSpeech()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0}, Landroid/speech/IRecognitionListener;->onEndOfSpeech()V

    .line 246
    return-void
.end method

.method public error(I)V
    .locals 2
    .param p1, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->this$0:Landroid/speech/RecognitionService;

    # getter for: Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/speech/RecognitionService;->access$600(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 255
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onError(I)V

    .line 256
    return-void
.end method

.method public partialResults(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "partialResults"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onPartialResults(Landroid/os/Bundle;)V

    .line 271
    return-void
.end method

.method public readyForSpeech(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onReadyForSpeech(Landroid/os/Bundle;)V

    .line 281
    return-void
.end method

.method public results(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "results"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->this$0:Landroid/speech/RecognitionService;

    # getter for: Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/speech/RecognitionService;->access$600(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 292
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onResults(Landroid/os/Bundle;)V

    .line 293
    return-void
.end method

.method public rmsChanged(F)V
    .locals 1
    .param p1, "rmsdB"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onRmsChanged(F)V

    .line 303
    return-void
.end method
