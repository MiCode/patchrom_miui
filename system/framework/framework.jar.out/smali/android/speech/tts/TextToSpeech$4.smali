.class Landroid/speech/tts/TextToSpeech$4;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->playSilence(JILjava/util/HashMap;)I
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeech;

.field final synthetic val$durationInMs:J

.field final synthetic val$params:Ljava/util/HashMap;

.field final synthetic val$queueMode:I


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech;JILjava/util/HashMap;)V
    .locals 0

    .prologue
    .line 969
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$4;->this$0:Landroid/speech/tts/TextToSpeech;

    iput-wide p2, p0, Landroid/speech/tts/TextToSpeech$4;->val$durationInMs:J

    iput p4, p0, Landroid/speech/tts/TextToSpeech$4;->val$queueMode:I

    iput-object p5, p0, Landroid/speech/tts/TextToSpeech$4;->val$params:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 6
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 972
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$4;->this$0:Landroid/speech/tts/TextToSpeech;

    # invokes: Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->access$100(Landroid/speech/tts/TextToSpeech;)Landroid/os/IBinder;

    move-result-object v1

    iget-wide v2, p0, Landroid/speech/tts/TextToSpeech$4;->val$durationInMs:J

    iget v4, p0, Landroid/speech/tts/TextToSpeech$4;->val$queueMode:I

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$4;->this$0:Landroid/speech/tts/TextToSpeech;

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$4;->val$params:Ljava/util/HashMap;

    # invokes: Landroid/speech/tts/TextToSpeech;->getParams(Ljava/util/HashMap;)Landroid/os/Bundle;
    invoke-static {v0, v5}, Landroid/speech/tts/TextToSpeech;->access$500(Landroid/speech/tts/TextToSpeech;Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/speech/tts/ITextToSpeechService;->playSilence(Landroid/os/IBinder;JILandroid/os/Bundle;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 969
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$4;->run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
