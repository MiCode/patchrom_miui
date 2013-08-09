.class Lcom/mediatek/gemini/GeminiIccLockSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "GeminiIccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/GeminiIccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/GeminiIccLockSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/GeminiIccLockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings$2;->this$0:Lcom/mediatek/gemini/GeminiIccLockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiIccLockSettings$2;->this$0:Lcom/mediatek/gemini/GeminiIccLockSettings;

    #getter for: Lcom/mediatek/gemini/GeminiIccLockSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiIccLockSettings;->access$400(Lcom/mediatek/gemini/GeminiIccLockSettings;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiIccLockSettings$2;->this$0:Lcom/mediatek/gemini/GeminiIccLockSettings;

    #getter for: Lcom/mediatek/gemini/GeminiIccLockSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/gemini/GeminiIccLockSettings;->access$400(Lcom/mediatek/gemini/GeminiIccLockSettings;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    const-string v2, "IccLockSettings"

    const-string v3, "receive ACTION_SIM_INFO_UPDATE"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiIccLockSettings$2;->this$0:Lcom/mediatek/gemini/GeminiIccLockSettings;

    invoke-static {v2}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 159
    .local v1, simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    if-eqz v1, :cond_0

    .line 160
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 162
    const-string v2, "IccLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hot swap_simList.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiIccLockSettings$2;->this$0:Lcom/mediatek/gemini/GeminiIccLockSettings;

    #calls: Lcom/mediatek/gemini/GeminiIccLockSettings;->gobackSettings()V
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiIccLockSettings;->access$500(Lcom/mediatek/gemini/GeminiIccLockSettings;)V

    goto :goto_0

    .line 164
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 165
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget v2, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiIccLockSettings$2;->this$0:Lcom/mediatek/gemini/GeminiIccLockSettings;

    #getter for: Lcom/mediatek/gemini/GeminiIccLockSettings;->mSimId:I
    invoke-static {v3}, Lcom/mediatek/gemini/GeminiIccLockSettings;->access$600(Lcom/mediatek/gemini/GeminiIccLockSettings;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 166
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiIccLockSettings$2;->this$0:Lcom/mediatek/gemini/GeminiIccLockSettings;

    invoke-virtual {v2}, Lcom/mediatek/gemini/GeminiIccLockSettings;->finish()V

    goto :goto_0
.end method
