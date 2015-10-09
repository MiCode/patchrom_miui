.class Landroid/speech/tts/TtsEngines$EngineInfoComparator;
.super Ljava/lang/Object;
.source "TtsEngines.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TtsEngines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EngineInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/speech/tts/TextToSpeech$EngineInfo;",
        ">;"
    }
.end annotation


# static fields
.field static INSTANCE:Landroid/speech/tts/TtsEngines$EngineInfoComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 260
    new-instance v0, Landroid/speech/tts/TtsEngines$EngineInfoComparator;

    invoke-direct {v0}, Landroid/speech/tts/TtsEngines$EngineInfoComparator;-><init>()V

    sput-object v0, Landroid/speech/tts/TtsEngines$EngineInfoComparator;->INSTANCE:Landroid/speech/tts/TtsEngines$EngineInfoComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/speech/tts/TextToSpeech$EngineInfo;Landroid/speech/tts/TextToSpeech$EngineInfo;)I
    .locals 2
    .param p1, "lhs"    # Landroid/speech/tts/TextToSpeech$EngineInfo;
    .param p2, "rhs"    # Landroid/speech/tts/TextToSpeech$EngineInfo;

    .prologue
    .line 269
    iget-boolean v0, p1, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    if-nez v0, :cond_0

    .line 270
    const/4 v0, -0x1

    .line 279
    :goto_0
    return v0

    .line 271
    :cond_0
    iget-boolean v0, p2, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    if-nez v0, :cond_1

    .line 272
    const/4 v0, 0x1

    goto :goto_0

    .line 279
    :cond_1
    iget v0, p2, Landroid/speech/tts/TextToSpeech$EngineInfo;->priority:I

    iget v1, p1, Landroid/speech/tts/TextToSpeech$EngineInfo;->priority:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 257
    check-cast p1, Landroid/speech/tts/TextToSpeech$EngineInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/speech/tts/TextToSpeech$EngineInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/speech/tts/TtsEngines$EngineInfoComparator;->compare(Landroid/speech/tts/TextToSpeech$EngineInfo;Landroid/speech/tts/TextToSpeech$EngineInfo;)I

    move-result v0

    return v0
.end method
