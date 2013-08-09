.class Lcom/mediatek/gemini/GeminiApnEditor$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 203
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiApnEditor$1;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 206
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor$1;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    const-string v3, "state"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    #setter for: Lcom/mediatek/gemini/GeminiApnEditor;->mAirplaneModeEnabled:Z
    invoke-static {v2, v3}, Lcom/mediatek/gemini/GeminiApnEditor;->access$002(Lcom/mediatek/gemini/GeminiApnEditor;Z)Z

    .line 209
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor$1;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    #getter for: Lcom/mediatek/gemini/GeminiApnEditor;->mAirplaneModeEnabled:Z
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiApnEditor;->access$000(Lcom/mediatek/gemini/GeminiApnEditor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    const-string v2, "ssr"

    const-string v3, "receiver: ACTION_AIRPLANE_MODE_CHANGED in ApnEditor"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor$1;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    #calls: Lcom/mediatek/gemini/GeminiApnEditor;->radioOffExit()V
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiApnEditor;->access$100(Lcom/mediatek/gemini/GeminiApnEditor;)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    const-string v2, "com.android.mms.transaction.START"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 214
    const-string v2, "ssr"

    const-string v3, "receiver: TRANSACTION_START in ApnEditor"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor$1;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    #setter for: Lcom/mediatek/gemini/GeminiApnEditor;->mNotInMmsTransaction:Z
    invoke-static {v2, v4}, Lcom/mediatek/gemini/GeminiApnEditor;->access$202(Lcom/mediatek/gemini/GeminiApnEditor;Z)Z

    .line 216
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor$1;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    invoke-virtual {v2}, Lcom/mediatek/gemini/GeminiApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 217
    :cond_2
    const-string v2, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 218
    const-string v2, "ssr"

    const-string v3, "receiver: TRANSACTION_STOP in ApnEditor"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor$1;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    #setter for: Lcom/mediatek/gemini/GeminiApnEditor;->mNotInMmsTransaction:Z
    invoke-static {v2, v5}, Lcom/mediatek/gemini/GeminiApnEditor;->access$202(Lcom/mediatek/gemini/GeminiApnEditor;Z)Z

    .line 220
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor$1;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    #calls: Lcom/mediatek/gemini/GeminiApnEditor;->setScreenEnabledStatus()V
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiApnEditor;->access$300(Lcom/mediatek/gemini/GeminiApnEditor;)V

    .line 222
    const-string v2, "tethering"

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor$1;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    #getter for: Lcom/mediatek/gemini/GeminiApnEditor;->mApnTypeList:Lcom/mediatek/gemini/ApnTypePreference;
    invoke-static {v3}, Lcom/mediatek/gemini/GeminiApnEditor;->access$400(Lcom/mediatek/gemini/GeminiApnEditor;)Lcom/mediatek/gemini/ApnTypePreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/gemini/ApnTypePreference;->getTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor$1;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    iget-object v2, v2, Lcom/mediatek/gemini/GeminiApnEditor;->mExt:Lcom/android/settings/ext/IApnEditorExt;

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor$1;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    #getter for: Lcom/mediatek/gemini/GeminiApnEditor;->mApnTypeList:Lcom/mediatek/gemini/ApnTypePreference;
    invoke-static {v3}, Lcom/mediatek/gemini/GeminiApnEditor;->access$400(Lcom/mediatek/gemini/GeminiApnEditor;)Lcom/mediatek/gemini/ApnTypePreference;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/settings/ext/IApnEditorExt;->setPreferenceState(Landroid/preference/DialogPreference;)V

    goto :goto_0

    .line 225
    :cond_3
    const-string v2, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 226
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor$1;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    const-string v3, "mode"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/mediatek/gemini/GeminiApnEditor;->mDualSimMode:I
    invoke-static {v2, v3}, Lcom/mediatek/gemini/GeminiApnEditor;->access$502(Lcom/mediatek/gemini/GeminiApnEditor;I)I

    .line 227
    invoke-static {}, Lcom/mediatek/gemini/GeminiApnEditor;->access$600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receiver, new dual sim mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnEditor$1;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    #getter for: Lcom/mediatek/gemini/GeminiApnEditor;->mDualSimMode:I
    invoke-static {v4}, Lcom/mediatek/gemini/GeminiApnEditor;->access$500(Lcom/mediatek/gemini/GeminiApnEditor;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor$1;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    #getter for: Lcom/mediatek/gemini/GeminiApnEditor;->mDualSimMode:I
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiApnEditor;->access$500(Lcom/mediatek/gemini/GeminiApnEditor;)I

    move-result v2

    if-nez v2, :cond_0

    .line 229
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor$1;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    #calls: Lcom/mediatek/gemini/GeminiApnEditor;->radioOffExit()V
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiApnEditor;->access$100(Lcom/mediatek/gemini/GeminiApnEditor;)V

    goto/16 :goto_0

    .line 231
    :cond_4
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 233
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor$1;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    #getter for: Lcom/mediatek/gemini/GeminiApnEditor;->mSpn:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiApnEditor;->access$700(Lcom/mediatek/gemini/GeminiApnEditor;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor$1;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    #getter for: Lcom/mediatek/gemini/GeminiApnEditor;->mSpn:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiApnEditor;->access$700(Lcom/mediatek/gemini/GeminiApnEditor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 234
    :cond_5
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor$1;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    #calls: Lcom/mediatek/gemini/GeminiApnEditor;->setSpn()V
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiApnEditor;->access$800(Lcom/mediatek/gemini/GeminiApnEditor;)V

    .line 236
    :cond_6
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor$1;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    #getter for: Lcom/mediatek/gemini/GeminiApnEditor;->mIMSI:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiApnEditor;->access$900(Lcom/mediatek/gemini/GeminiApnEditor;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor$1;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    #getter for: Lcom/mediatek/gemini/GeminiApnEditor;->mIMSI:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiApnEditor;->access$900(Lcom/mediatek/gemini/GeminiApnEditor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 237
    :cond_7
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor$1;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    #calls: Lcom/mediatek/gemini/GeminiApnEditor;->setIMSI()V
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiApnEditor;->access$1000(Lcom/mediatek/gemini/GeminiApnEditor;)V

    .line 239
    :cond_8
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor$1;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    #getter for: Lcom/mediatek/gemini/GeminiApnEditor;->mPnn:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiApnEditor;->access$1100(Lcom/mediatek/gemini/GeminiApnEditor;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor$1;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    #getter for: Lcom/mediatek/gemini/GeminiApnEditor;->mPnn:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiApnEditor;->access$1100(Lcom/mediatek/gemini/GeminiApnEditor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    :cond_9
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor$1;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    #calls: Lcom/mediatek/gemini/GeminiApnEditor;->setPnn()V
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiApnEditor;->access$1200(Lcom/mediatek/gemini/GeminiApnEditor;)V

    goto/16 :goto_0

    .line 243
    :cond_a
    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor$1;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    invoke-static {v2}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 246
    .local v1, temp:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_b

    .line 247
    invoke-static {}, Lcom/mediatek/gemini/GeminiApnEditor;->access$600()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Activity finished"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor$1;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    invoke-virtual {v2}, Lcom/mediatek/gemini/GeminiApnEditor;->finish()V

    goto/16 :goto_0

    .line 249
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 250
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget v2, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor$1;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    #getter for: Lcom/mediatek/gemini/GeminiApnEditor;->mSimId:I
    invoke-static {v3}, Lcom/mediatek/gemini/GeminiApnEditor;->access$1300(Lcom/mediatek/gemini/GeminiApnEditor;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 251
    invoke-static {}, Lcom/mediatek/gemini/GeminiApnEditor;->access$600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "temp.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Activity finished"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor$1;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    invoke-virtual {v2}, Lcom/mediatek/gemini/GeminiApnEditor;->finish()V

    goto/16 :goto_0
.end method
