.class Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItem;
.super Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynthesisToFileOutputStreamSpeechItem"
.end annotation


# instance fields
.field private final mFileOutputStream:Ljava/io/FileOutputStream;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Ljava/io/FileOutputStream;)V
    .locals 0
    .param p2, "callerIdentity"    # Ljava/lang/Object;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "params"    # Landroid/os/Bundle;
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "fileOutputStream"    # Ljava/io/FileOutputStream;

    .prologue
    .line 666
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 667
    invoke-direct/range {p0 .. p6}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;)V

    .line 668
    iput-object p7, p0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItem;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 669
    return-void
.end method


# virtual methods
.method protected createSynthesisCallback()Landroid/speech/tts/AbstractSynthesisCallback;
    .locals 2

    .prologue
    .line 673
    new-instance v0, Landroid/speech/tts/FileSynthesisCallback;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItem;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/speech/tts/FileSynthesisCallback;-><init>(Ljava/nio/channels/FileChannel;)V

    return-object v0
.end method

.method protected playImpl()I
    .locals 4

    .prologue
    .line 678
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItem;->dispatchOnStart()V

    .line 679
    invoke-super {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->playImpl()I

    move-result v1

    .line 680
    .local v1, "status":I
    if-nez v1, :cond_0

    .line 681
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItem;->dispatchOnDone()V

    .line 686
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItem;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :goto_1
    return v1

    .line 683
    :cond_0
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItem;->dispatchOnError()V

    goto :goto_0

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "TextToSpeechService"

    const-string v3, "Failed to close output file"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
