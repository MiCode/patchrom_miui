.class public final Landroid/speech/tts/SynthesisRequest;
.super Ljava/lang/Object;
.source "SynthesisRequest.java"


# instance fields
.field private mCallerUid:I

.field private mCountry:Ljava/lang/String;

.field private mLanguage:Ljava/lang/String;

.field private final mParams:Landroid/os/Bundle;

.field private mPitch:I

.field private mSpeechRate:I

.field private final mText:Ljava/lang/String;

.field private mVariant:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/speech/tts/SynthesisRequest;->mText:Ljava/lang/String;

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mParams:Landroid/os/Bundle;

    .line 50
    return-void
.end method


# virtual methods
.method public getCallerUid()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Landroid/speech/tts/SynthesisRequest;->mCallerUid:I

    return v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPitch()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Landroid/speech/tts/SynthesisRequest;->mPitch:I

    return v0
.end method

.method public getSpeechRate()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Landroid/speech/tts/SynthesisRequest;->mSpeechRate:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mVariant:Ljava/lang/String;

    return-object v0
.end method

.method setCallerUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 135
    iput p1, p0, Landroid/speech/tts/SynthesisRequest;->mCallerUid:I

    .line 136
    return-void
.end method

.method setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Landroid/speech/tts/SynthesisRequest;->mLanguage:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Landroid/speech/tts/SynthesisRequest;->mCountry:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Landroid/speech/tts/SynthesisRequest;->mVariant:Ljava/lang/String;

    .line 115
    return-void
.end method

.method setPitch(I)V
    .locals 0
    .param p1, "pitch"    # I

    .prologue
    .line 128
    iput p1, p0, Landroid/speech/tts/SynthesisRequest;->mPitch:I

    .line 129
    return-void
.end method

.method setSpeechRate(I)V
    .locals 0
    .param p1, "speechRate"    # I

    .prologue
    .line 121
    iput p1, p0, Landroid/speech/tts/SynthesisRequest;->mSpeechRate:I

    .line 122
    return-void
.end method
