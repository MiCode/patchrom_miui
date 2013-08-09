.class Lcom/android/settings/tts/TtsEngineSettingsFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "TtsEngineSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tts/TtsEngineSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TtsEngineSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$2;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 86
    const-string v0, "android.speech.tts.engine.TTS_DATA_INSTALLED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$2;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    #calls: Lcom/android/settings/tts/TtsEngineSettingsFragment;->checkTtsData()V
    invoke-static {v0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->access$100(Lcom/android/settings/tts/TtsEngineSettingsFragment;)V

    .line 89
    :cond_0
    return-void
.end method
