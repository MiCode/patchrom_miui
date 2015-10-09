.class Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;
.super Landroid/speech/tts/TextToSpeechService$SpeechItem;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadLanguageItem"
.end annotation


# instance fields
.field private final mCountry:Ljava/lang/String;

.field private final mLanguage:Ljava/lang/String;

.field private final mVariant:Ljava/lang/String;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "callerIdentity"    # Ljava/lang/Object;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "params"    # Landroid/os/Bundle;
    .param p6, "language"    # Ljava/lang/String;
    .param p7, "country"    # Ljava/lang/String;
    .param p8, "variant"    # Ljava/lang/String;

    .prologue
    .line 753
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 754
    invoke-direct/range {p0 .. p5}, Landroid/speech/tts/TextToSpeechService$SpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;)V

    .line 755
    iput-object p6, p0, Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;->mLanguage:Ljava/lang/String;

    .line 756
    iput-object p7, p0, Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;->mCountry:Ljava/lang/String;

    .line 757
    iput-object p8, p0, Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;->mVariant:Ljava/lang/String;

    .line 758
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 762
    const/4 v0, 0x1

    return v0
.end method

.method protected playImpl()I
    .locals 5

    .prologue
    .line 767
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;->mLanguage:Ljava/lang/String;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;->mCountry:Ljava/lang/String;

    iget-object v4, p0, Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;->mVariant:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/speech/tts/TextToSpeechService;->onLoadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 768
    .local v0, "result":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 771
    :cond_0
    const/4 v1, 0x0

    .line 773
    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected stopImpl()V
    .locals 0

    .prologue
    .line 779
    return-void
.end method
