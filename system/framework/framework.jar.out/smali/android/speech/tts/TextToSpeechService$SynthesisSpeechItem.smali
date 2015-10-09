.class Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;
.super Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SynthesisSpeechItem"
.end annotation


# instance fields
.field private final mCallerUid:I

.field private final mDefaultLocale:[Ljava/lang/String;

.field private final mEventLogger:Landroid/speech/tts/EventLogger;

.field private mSynthesisCallback:Landroid/speech/tts/AbstractSynthesisCallback;

.field private final mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

.field private final mText:Ljava/lang/String;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .param p2, "callerIdentity"    # Ljava/lang/Object;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "params"    # Landroid/os/Bundle;
    .param p6, "text"    # Ljava/lang/String;

    .prologue
    .line 563
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 564
    invoke-direct/range {p0 .. p5}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;)V

    .line 565
    iput-object p6, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mText:Ljava/lang/String;

    .line 566
    iput p3, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mCallerUid:I

    .line 567
    new-instance v0, Landroid/speech/tts/SynthesisRequest;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mText:Ljava/lang/String;

    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mParams:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/SynthesisRequest;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

    .line 568
    # invokes: Landroid/speech/tts/TextToSpeechService;->getSettingsLocale()[Ljava/lang/String;
    invoke-static {p1}, Landroid/speech/tts/TextToSpeechService;->access$400(Landroid/speech/tts/TextToSpeechService;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mDefaultLocale:[Ljava/lang/String;

    .line 569
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->setRequestParams(Landroid/speech/tts/SynthesisRequest;)V

    .line 570
    new-instance v0, Landroid/speech/tts/EventLogger;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Landroid/speech/tts/TextToSpeechService;->access$500(Landroid/speech/tts/TextToSpeechService;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p3, p4, v2}, Landroid/speech/tts/EventLogger;-><init>(Landroid/speech/tts/SynthesisRequest;IILjava/lang/String;)V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mEventLogger:Landroid/speech/tts/EventLogger;

    .line 572
    return-void
.end method

.method private getCountry()Ljava/lang/String;
    .locals 2

    .prologue
    .line 644
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->hasLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mDefaultLocale:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 645
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "country"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getStringParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPitch()I
    .locals 2

    .prologue
    .line 658
    const-string/jumbo v0, "pitch"

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getIntParam(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getSpeechRate()I
    .locals 2

    .prologue
    .line 654
    const-string/jumbo v0, "rate"

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    # invokes: Landroid/speech/tts/TextToSpeechService;->getDefaultSpeechRate()I
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$600(Landroid/speech/tts/TextToSpeechService;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getIntParam(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getVariant()Ljava/lang/String;
    .locals 2

    .prologue
    .line 649
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->hasLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mDefaultLocale:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 650
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "variant"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getStringParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hasLanguage()Z
    .locals 2

    .prologue
    .line 640
    const-string v0, "language"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getStringParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setRequestParams(Landroid/speech/tts/SynthesisRequest;)V
    .locals 3
    .param p1, "request"    # Landroid/speech/tts/SynthesisRequest;

    .prologue
    .line 614
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/speech/tts/SynthesisRequest;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getSpeechRate()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/speech/tts/SynthesisRequest;->setSpeechRate(I)V

    .line 616
    iget v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mCallerUid:I

    invoke-virtual {p1, v0}, Landroid/speech/tts/SynthesisRequest;->setCallerUid(I)V

    .line 617
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getPitch()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/speech/tts/SynthesisRequest;->setPitch(I)V

    .line 618
    return-void
.end method


# virtual methods
.method protected createSynthesisCallback()Landroid/speech/tts/AbstractSynthesisCallback;
    .locals 8

    .prologue
    .line 609
    new-instance v0, Landroid/speech/tts/PlaybackSynthesisCallback;

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getStreamType()I

    move-result v1

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getVolume()F

    move-result v2

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getPan()F

    move-result v3

    iget-object v4, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;
    invoke-static {v4}, Landroid/speech/tts/TextToSpeechService;->access$200(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v4

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mEventLogger:Landroid/speech/tts/EventLogger;

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Landroid/speech/tts/PlaybackSynthesisCallback;-><init>(IFFLandroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/speech/tts/EventLogger;)V

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 636
    const-string v0, "language"

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mDefaultLocale:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getStringParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 580
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mText:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 581
    const-string v1, "TextToSpeechService"

    const-string/jumbo v2, "null synthesis text"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :goto_0
    return v0

    .line 584
    :cond_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {}, Landroid/speech/tts/TextToSpeech;->getMaxSpeechInputLength()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 585
    const-string v1, "TextToSpeechService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text too long: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " chars"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 588
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected playImpl()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 594
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mEventLogger:Landroid/speech/tts/EventLogger;

    invoke-virtual {v2}, Landroid/speech/tts/EventLogger;->onRequestProcessingStart()V

    .line 595
    monitor-enter p0

    .line 598
    :try_start_0
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->isStopped()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 599
    monitor-exit p0

    .line 605
    :cond_0
    :goto_0
    return v1

    .line 601
    :cond_1
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->createSynthesisCallback()Landroid/speech/tts/AbstractSynthesisCallback;

    move-result-object v2

    iput-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mSynthesisCallback:Landroid/speech/tts/AbstractSynthesisCallback;

    .line 602
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mSynthesisCallback:Landroid/speech/tts/AbstractSynthesisCallback;

    .line 603
    .local v0, "synthesisCallback":Landroid/speech/tts/AbstractSynthesisCallback;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v2, v3, v0}, Landroid/speech/tts/TextToSpeechService;->onSynthesizeText(Landroid/speech/tts/SynthesisRequest;Landroid/speech/tts/SynthesisCallback;)V

    .line 605
    invoke-virtual {v0}, Landroid/speech/tts/AbstractSynthesisCallback;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 603
    .end local v0    # "synthesisCallback":Landroid/speech/tts/AbstractSynthesisCallback;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected stopImpl()V
    .locals 2

    .prologue
    .line 623
    monitor-enter p0

    .line 624
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mSynthesisCallback:Landroid/speech/tts/AbstractSynthesisCallback;

    .line 625
    .local v0, "synthesisCallback":Landroid/speech/tts/AbstractSynthesisCallback;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {v0}, Landroid/speech/tts/AbstractSynthesisCallback;->stop()V

    .line 631
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeechService;->onStop()V

    .line 633
    :cond_0
    return-void

    .line 625
    .end local v0    # "synthesisCallback":Landroid/speech/tts/AbstractSynthesisCallback;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
