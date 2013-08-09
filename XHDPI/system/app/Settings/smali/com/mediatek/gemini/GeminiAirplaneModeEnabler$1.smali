.class Lcom/mediatek/gemini/GeminiAirplaneModeEnabler$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 100
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler$1;->this$0:Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 103
    const-string v1, "GeminiAirplaneModeEnabler"

    const-string v2, "mAirplaneModeReceiver AIRPLANE_MODE_CHANGED..."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler$1;->this$0:Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;

    #getter for: Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->access$000(Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 105
    .local v0, airplaneModeEnabled:Z
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler$1;->this$0:Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;

    #getter for: Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;
    invoke-static {v1}, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->access$100(Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;)Lmiui/widget/SlidingButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 106
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler$1;->this$0:Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;

    #getter for: Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;
    invoke-static {v1}, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->access$200(Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;)Lmiui/widget/SlidingButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    .line 107
    return-void
.end method
