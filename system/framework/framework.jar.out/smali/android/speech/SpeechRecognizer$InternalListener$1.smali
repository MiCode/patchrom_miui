.class Landroid/speech/SpeechRecognizer$InternalListener$1;
.super Landroid/os/Handler;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizer$InternalListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/speech/SpeechRecognizer$InternalListener;


# direct methods
.method constructor <init>(Landroid/speech/SpeechRecognizer$InternalListener;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 428
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    # getter for: Landroid/speech/SpeechRecognizer$InternalListener;->mInternalListener:Landroid/speech/RecognitionListener;
    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 431
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 433
    :pswitch_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    # getter for: Landroid/speech/SpeechRecognizer$InternalListener;->mInternalListener:Landroid/speech/RecognitionListener;
    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/RecognitionListener;->onBeginningOfSpeech()V

    goto :goto_0

    .line 436
    :pswitch_1
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    # getter for: Landroid/speech/SpeechRecognizer$InternalListener;->mInternalListener:Landroid/speech/RecognitionListener;
    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-interface {v1, v0}, Landroid/speech/RecognitionListener;->onBufferReceived([B)V

    goto :goto_0

    .line 439
    :pswitch_2
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    # getter for: Landroid/speech/SpeechRecognizer$InternalListener;->mInternalListener:Landroid/speech/RecognitionListener;
    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/RecognitionListener;->onEndOfSpeech()V

    goto :goto_0

    .line 442
    :pswitch_3
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    # getter for: Landroid/speech/SpeechRecognizer$InternalListener;->mInternalListener:Landroid/speech/RecognitionListener;
    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/speech/RecognitionListener;->onError(I)V

    goto :goto_0

    .line 445
    :pswitch_4
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    # getter for: Landroid/speech/SpeechRecognizer$InternalListener;->mInternalListener:Landroid/speech/RecognitionListener;
    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v0}, Landroid/speech/RecognitionListener;->onReadyForSpeech(Landroid/os/Bundle;)V

    goto :goto_0

    .line 448
    :pswitch_5
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    # getter for: Landroid/speech/SpeechRecognizer$InternalListener;->mInternalListener:Landroid/speech/RecognitionListener;
    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v0}, Landroid/speech/RecognitionListener;->onResults(Landroid/os/Bundle;)V

    goto :goto_0

    .line 451
    :pswitch_6
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    # getter for: Landroid/speech/SpeechRecognizer$InternalListener;->mInternalListener:Landroid/speech/RecognitionListener;
    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v0}, Landroid/speech/RecognitionListener;->onPartialResults(Landroid/os/Bundle;)V

    goto :goto_0

    .line 454
    :pswitch_7
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    # getter for: Landroid/speech/SpeechRecognizer$InternalListener;->mInternalListener:Landroid/speech/RecognitionListener;
    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v0}, Landroid/speech/RecognitionListener;->onRmsChanged(F)V

    goto :goto_0

    .line 457
    :pswitch_8
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    # getter for: Landroid/speech/SpeechRecognizer$InternalListener;->mInternalListener:Landroid/speech/RecognitionListener;
    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v2, v0}, Landroid/speech/RecognitionListener;->onEvent(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 431
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
