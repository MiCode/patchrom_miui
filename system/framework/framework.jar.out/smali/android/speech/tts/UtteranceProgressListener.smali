.class public abstract Landroid/speech/tts/UtteranceProgressListener;
.super Ljava/lang/Object;
.source "UtteranceProgressListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static from(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)Landroid/speech/tts/UtteranceProgressListener;
    .locals 1
    .param p0, "listener"    # Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;

    .prologue
    .line 54
    new-instance v0, Landroid/speech/tts/UtteranceProgressListener$1;

    invoke-direct {v0, p0}, Landroid/speech/tts/UtteranceProgressListener$1;-><init>(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)V

    return-object v0
.end method


# virtual methods
.method public abstract onDone(Ljava/lang/String;)V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onStart(Ljava/lang/String;)V
.end method
