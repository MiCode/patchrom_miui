.class public abstract Landroid/speech/tts/TextToSpeechService;
.super Landroid/app/Service;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TextToSpeechService$CallbackMap;,
        Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;,
        Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;,
        Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;,
        Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItem;,
        Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;,
        Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;,
        Landroid/speech/tts/TextToSpeechService$SpeechItem;,
        Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;,
        Landroid/speech/tts/TextToSpeechService$SynthHandler;,
        Landroid/speech/tts/TextToSpeechService$SynthThread;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final SYNTH_THREAD_NAME:Ljava/lang/String; = "SynthThread"

.field private static final TAG:Ljava/lang/String; = "TextToSpeechService"


# instance fields
.field private mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;

.field private final mBinder:Landroid/speech/tts/ITextToSpeechService$Stub;

.field private mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;

.field private mEngineHelper:Landroid/speech/tts/TtsEngines;

.field private mPackageName:Ljava/lang/String;

.field private mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 796
    new-instance v0, Landroid/speech/tts/TextToSpeechService$1;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeechService$1;-><init>(Landroid/speech/tts/TextToSpeechService;)V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mBinder:Landroid/speech/tts/ITextToSpeechService$Stub;

    .line 948
    return-void
.end method

.method static synthetic access$200(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeechService;

    .prologue
    .line 74
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeechService;

    .prologue
    .line 74
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;

    return-object v0
.end method

.method static synthetic access$400(Landroid/speech/tts/TextToSpeechService;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeechService;

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService;->getSettingsLocale()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/speech/tts/TextToSpeechService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeechService;

    .prologue
    .line 74
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroid/speech/tts/TextToSpeechService;)I
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeechService;

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService;->getDefaultSpeechRate()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeechService;

    .prologue
    .line 74
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    return-object v0
.end method

.method private getDefaultSpeechRate()I
    .locals 2

    .prologue
    .line 219
    const-string/jumbo v0, "tts_default_rate"

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Landroid/speech/tts/TextToSpeechService;->getSecureSettingInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getSecureSettingInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 228
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getSettingsLocale()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 223
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService;->mEngineHelper:Landroid/speech/tts/TtsEngines;

    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "locale":Ljava/lang/String;
    invoke-static {v0}, Landroid/speech/tts/TtsEngines;->parseLocalePref(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 784
    const-string v0, "android.intent.action.TTS_SERVICE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mBinder:Landroid/speech/tts/ITextToSpeechService$Stub;

    .line 787
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 97
    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthThread;

    invoke-direct {v1, p0}, Landroid/speech/tts/TextToSpeechService$SynthThread;-><init>(Landroid/speech/tts/TextToSpeechService;)V

    .line 98
    .local v1, "synthThread":Landroid/speech/tts/TextToSpeechService$SynthThread;
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeechService$SynthThread;->start()V

    .line 99
    new-instance v2, Landroid/speech/tts/TextToSpeechService$SynthHandler;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeechService$SynthThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/speech/tts/TextToSpeechService$SynthHandler;-><init>(Landroid/speech/tts/TextToSpeechService;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    .line 101
    new-instance v2, Landroid/speech/tts/AudioPlaybackHandler;

    invoke-direct {v2}, Landroid/speech/tts/AudioPlaybackHandler;-><init>()V

    iput-object v2, p0, Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    .line 102
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    invoke-virtual {v2}, Landroid/speech/tts/AudioPlaybackHandler;->start()V

    .line 104
    new-instance v2, Landroid/speech/tts/TtsEngines;

    invoke-direct {v2, p0}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/speech/tts/TextToSpeechService;->mEngineHelper:Landroid/speech/tts/TtsEngines;

    .line 106
    new-instance v2, Landroid/speech/tts/TextToSpeechService$CallbackMap;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/speech/tts/TextToSpeechService$CallbackMap;-><init>(Landroid/speech/tts/TextToSpeechService;Landroid/speech/tts/TextToSpeechService$1;)V

    iput-object v2, p0, Landroid/speech/tts/TextToSpeechService;->mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;

    .line 108
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Landroid/speech/tts/TextToSpeechService;->mPackageName:Ljava/lang/String;

    .line 110
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService;->getSettingsLocale()[Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "defaultLocale":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/speech/tts/TextToSpeechService;->onLoadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->quit()V

    .line 122
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    invoke-virtual {v0}, Landroid/speech/tts/AudioPlaybackHandler;->quit()V

    .line 124
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->kill()V

    .line 126
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 127
    return-void
.end method

.method protected onGetFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract onGetLanguage()[Ljava/lang/String;
.end method

.method protected abstract onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract onLoadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract onStop()V
.end method

.method protected abstract onSynthesizeText(Landroid/speech/tts/SynthesisRequest;Landroid/speech/tts/SynthesisCallback;)V
.end method
