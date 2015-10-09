.class Landroid/speech/tts/TextToSpeech$9;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I
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

.field final synthetic val$loc:Ljava/util/Locale;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech;Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 1136
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$9;->this$0:Landroid/speech/tts/TextToSpeech;

    iput-object p2, p0, Landroid/speech/tts/TextToSpeech$9;->val$loc:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 9
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x2

    .line 1139
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$9;->val$loc:Ljava/util/Locale;

    if-nez v5, :cond_0

    .line 1140
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1176
    :goto_0
    return-object v5

    .line 1142
    :cond_0
    const/4 v2, 0x0

    .local v2, "language":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1144
    .local v0, "country":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$9;->val$loc:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1151
    :try_start_1
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$9;->val$loc:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1157
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$9;->val$loc:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    .line 1164
    .local v4, "variant":Ljava/lang/String;
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$9;->this$0:Landroid/speech/tts/TextToSpeech;

    # invokes: Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;
    invoke-static {v5}, Landroid/speech/tts/TextToSpeech;->access$100(Landroid/speech/tts/TextToSpeech;)Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {p1, v5, v2, v0, v4}, Landroid/speech/tts/ITextToSpeechService;->loadLanguage(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1165
    .local v3, "result":I
    if-ltz v3, :cond_2

    .line 1166
    const/4 v5, 0x2

    if-ge v3, v5, :cond_1

    .line 1167
    const-string v4, ""

    .line 1168
    const/4 v5, 0x1

    if-ge v3, v5, :cond_1

    .line 1169
    const-string v0, ""

    .line 1172
    :cond_1
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$9;->this$0:Landroid/speech/tts/TextToSpeech;

    # getter for: Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;
    invoke-static {v5}, Landroid/speech/tts/TextToSpeech;->access$700(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "language"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$9;->this$0:Landroid/speech/tts/TextToSpeech;

    # getter for: Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;
    invoke-static {v5}, Landroid/speech/tts/TextToSpeech;->access$700(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "country"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$9;->this$0:Landroid/speech/tts/TextToSpeech;

    # getter for: Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;
    invoke-static {v5}, Landroid/speech/tts/TextToSpeech;->access$700(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "variant"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 1145
    .end local v3    # "result":I
    .end local v4    # "variant":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1146
    .local v1, "e":Ljava/util/MissingResourceException;
    const-string v5, "TextToSpeech"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t retrieve ISO 639-2/T language code for locale: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/speech/tts/TextToSpeech$9;->val$loc:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1147
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 1152
    .end local v1    # "e":Ljava/util/MissingResourceException;
    :catch_1
    move-exception v1

    .line 1153
    .restart local v1    # "e":Ljava/util/MissingResourceException;
    const-string v5, "TextToSpeech"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t retrieve ISO 3166 country code for locale: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/speech/tts/TextToSpeech$9;->val$loc:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1154
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_0
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
    .line 1136
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$9;->run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
