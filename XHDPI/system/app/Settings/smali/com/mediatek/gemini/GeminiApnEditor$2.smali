.class Lcom/mediatek/gemini/GeminiApnEditor$2;
.super Landroid/telephony/PhoneStateListener;
.source "GeminiApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/GeminiApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/GeminiApnEditor;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/GeminiApnEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiApnEditor$2;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    .line 263
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 265
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiApnEditor$2;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/mediatek/gemini/GeminiApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 266
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor$2;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    #setter for: Lcom/mediatek/gemini/GeminiApnEditor;->mIsCallStateIdle:Z
    invoke-static {v2, v1}, Lcom/mediatek/gemini/GeminiApnEditor;->access$1402(Lcom/mediatek/gemini/GeminiApnEditor;Z)Z

    .line 267
    return-void

    .line 266
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
