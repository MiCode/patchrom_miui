.class Landroid/speech/tts/TextToSpeech$1;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->shutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/speech/tts/TextToSpeech$Action",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeech;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$1;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 727
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$1;->run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Void;
    .locals 2
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 730
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$1;->this$0:Landroid/speech/tts/TextToSpeech;

    # invokes: Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->access$100(Landroid/speech/tts/TextToSpeech;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/speech/tts/ITextToSpeechService;->setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V

    .line 731
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$1;->this$0:Landroid/speech/tts/TextToSpeech;

    # invokes: Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->access$100(Landroid/speech/tts/TextToSpeech;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/speech/tts/ITextToSpeechService;->stop(Landroid/os/IBinder;)I

    .line 732
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$1;->this$0:Landroid/speech/tts/TextToSpeech;

    # getter for: Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->access$200(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech$Connection;->disconnect()V

    .line 740
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$1;->this$0:Landroid/speech/tts/TextToSpeech;

    # setter for: Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->access$202(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/TextToSpeech$Connection;

    .line 741
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$1;->this$0:Landroid/speech/tts/TextToSpeech;

    # setter for: Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->access$302(Landroid/speech/tts/TextToSpeech;Ljava/lang/String;)Ljava/lang/String;

    .line 742
    return-object v1
.end method
