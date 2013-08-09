.class Lcom/mediatek/gemini/GeminiApnSettings$3;
.super Landroid/telephony/PhoneStateListener;
.source "GeminiApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/GeminiApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/GeminiApnSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/GeminiApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiApnSettings$3;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "serviceState"

    .prologue
    .line 256
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 257
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiApnSettings$3;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings$3;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    iget-object v0, v0, Lcom/mediatek/gemini/GeminiApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/mediatek/gemini/GeminiApnSettings;->mIsCallStateIdle:Z

    .line 258
    return-void

    .line 257
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
