.class Lcom/mediatek/gemini/GeminiAirplaneModeEnabler$3;
.super Landroid/telephony/PhoneStateListener;
.source "GeminiAirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler$3;->this$0:Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    .line 124
    const-string v0, "GeminiAirplaneModeEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneStateListener2.onServiceStateChanged: serviceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler$3;->this$0:Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    #setter for: Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mServiceState2:I
    invoke-static {v0, v1}, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->access$502(Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;I)I

    .line 126
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler$3;->this$0:Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;

    #calls: Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->access$400(Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;)V

    .line 127
    return-void
.end method
