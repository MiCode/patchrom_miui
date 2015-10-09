.class public Landroid/speech/tts/TextToSpeech$Engine;
.super Ljava/lang/Object;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Engine"
.end annotation


# static fields
.field public static final ACTION_CHECK_TTS_DATA:Ljava/lang/String; = "android.speech.tts.engine.CHECK_TTS_DATA"

.field public static final ACTION_GET_SAMPLE_TEXT:Ljava/lang/String; = "android.speech.tts.engine.GET_SAMPLE_TEXT"

.field public static final ACTION_INSTALL_TTS_DATA:Ljava/lang/String; = "android.speech.tts.engine.INSTALL_TTS_DATA"

.field public static final ACTION_TTS_DATA_INSTALLED:Ljava/lang/String; = "android.speech.tts.engine.TTS_DATA_INSTALLED"

.field public static final CHECK_VOICE_DATA_BAD_DATA:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHECK_VOICE_DATA_FAIL:I = 0x0

.field public static final CHECK_VOICE_DATA_MISSING_DATA:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHECK_VOICE_DATA_MISSING_VOLUME:I = -0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHECK_VOICE_DATA_PASS:I = 0x1

.field public static final DEFAULT_ENGINE:Ljava/lang/String; = "com.svox.pico"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_PAN:F = 0.0f

.field public static final DEFAULT_PITCH:I = 0x64

.field public static final DEFAULT_RATE:I = 0x64

.field public static final DEFAULT_STREAM:I = 0x3

.field public static final DEFAULT_VOLUME:F = 1.0f

.field public static final EXTRA_AVAILABLE_VOICES:Ljava/lang/String; = "availableVoices"

.field public static final EXTRA_CHECK_VOICE_DATA_FOR:Ljava/lang/String; = "checkVoiceDataFor"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_SAMPLE_TEXT:Ljava/lang/String; = "sampleText"

.field public static final EXTRA_TTS_DATA_INSTALLED:Ljava/lang/String; = "dataInstalled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_UNAVAILABLE_VOICES:Ljava/lang/String; = "unavailableVoices"

.field public static final EXTRA_VOICE_DATA_FILES:Ljava/lang/String; = "dataFiles"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_VOICE_DATA_FILES_INFO:Ljava/lang/String; = "dataFilesInfo"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_VOICE_DATA_ROOT_DIRECTORY:Ljava/lang/String; = "dataRoot"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INTENT_ACTION_TTS_SERVICE:Ljava/lang/String; = "android.intent.action.TTS_SERVICE"

.field public static final KEY_FEATURE_EMBEDDED_SYNTHESIS:Ljava/lang/String; = "embeddedTts"

.field public static final KEY_FEATURE_NETWORK_SYNTHESIS:Ljava/lang/String; = "networkTts"

.field public static final KEY_PARAM_COUNTRY:Ljava/lang/String; = "country"

.field public static final KEY_PARAM_ENGINE:Ljava/lang/String; = "engine"

.field public static final KEY_PARAM_LANGUAGE:Ljava/lang/String; = "language"

.field public static final KEY_PARAM_PAN:Ljava/lang/String; = "pan"

.field public static final KEY_PARAM_PITCH:Ljava/lang/String; = "pitch"

.field public static final KEY_PARAM_RATE:Ljava/lang/String; = "rate"

.field public static final KEY_PARAM_STREAM:Ljava/lang/String; = "streamType"

.field public static final KEY_PARAM_UTTERANCE_ID:Ljava/lang/String; = "utteranceId"

.field public static final KEY_PARAM_VARIANT:Ljava/lang/String; = "variant"

.field public static final KEY_PARAM_VOLUME:Ljava/lang/String; = "volume"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.speech.tts"

.field public static final USE_DEFAULTS:I


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeech;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$Engine;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
