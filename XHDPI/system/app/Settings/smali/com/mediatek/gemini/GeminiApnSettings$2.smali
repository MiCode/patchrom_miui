.class Lcom/mediatek/gemini/GeminiApnSettings$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 176
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 179
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 181
    #calls: Lcom/mediatek/gemini/GeminiApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {p2}, Lcom/mediatek/gemini/GeminiApnSettings;->access$100(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    .line 182
    .local v2, state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    sget-object v4, Lcom/mediatek/gemini/GeminiApnSettings$5;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 249
    .end local v2           #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_0
    :goto_0
    return-void

    .line 190
    .restart local v2       #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :pswitch_0
    const-string v4, "simId"

    const/4 v5, 0x2

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 191
    .local v1, simId:I
    const-string v4, "ApnSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get sim Id in broadcast received is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    iget v4, v4, Lcom/mediatek/gemini/GeminiApnSettings;->mSimId:I

    if-ne v1, v4, :cond_0

    .line 193
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    iget-object v5, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    iget v5, v5, Lcom/mediatek/gemini/GeminiApnSettings;->mSimId:I

    #calls: Lcom/mediatek/gemini/GeminiApnSettings;->fillList(I)V
    invoke-static {v4, v5}, Lcom/mediatek/gemini/GeminiApnSettings;->access$000(Lcom/mediatek/gemini/GeminiApnSettings;I)V

    goto :goto_0

    .line 200
    .end local v1           #simId:I
    .end local v2           #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_1
    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 201
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    const-string v7, "state"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v6, Lcom/mediatek/gemini/GeminiApnSettings;->mAirplaneModeEnabled:Z

    .line 202
    const-string v6, "ApnSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AIRPLANE_MODE state changed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    iget-boolean v8, v8, Lcom/mediatek/gemini/GeminiApnSettings;->mAirplaneModeEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    invoke-virtual {v6}, Lcom/mediatek/gemini/GeminiApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    iget-boolean v7, v7, Lcom/mediatek/gemini/GeminiApnSettings;->mAirplaneModeEnabled:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    #getter for: Lcom/mediatek/gemini/GeminiApnSettings;->mDualSimMode:I
    invoke-static {v7}, Lcom/mediatek/gemini/GeminiApnSettings;->access$200(Lcom/mediatek/gemini/GeminiApnSettings;)I

    move-result v7

    if-eqz v7, :cond_2

    :goto_1
    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 204
    :cond_3
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 205
    const-string v4, "ApnSettings"

    const-string v5, "receiver: ACTION_SIM_STATE_CHANGED in ApnSettings"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    iget-object v4, v4, Lcom/mediatek/gemini/GeminiApnSettings;->mNumeric:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    iget-object v4, v4, Lcom/mediatek/gemini/GeminiApnSettings;->mNumeric:Ljava/lang/String;

    const-string v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_4
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    #getter for: Lcom/mediatek/gemini/GeminiApnSettings;->mSpn:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/gemini/GeminiApnSettings;->access$300(Lcom/mediatek/gemini/GeminiApnSettings;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    #getter for: Lcom/mediatek/gemini/GeminiApnSettings;->mSpn:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/gemini/GeminiApnSettings;->access$300(Lcom/mediatek/gemini/GeminiApnSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_5
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    #getter for: Lcom/mediatek/gemini/GeminiApnSettings;->mIMSI:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/gemini/GeminiApnSettings;->access$400(Lcom/mediatek/gemini/GeminiApnSettings;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    #getter for: Lcom/mediatek/gemini/GeminiApnSettings;->mIMSI:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/gemini/GeminiApnSettings;->access$400(Lcom/mediatek/gemini/GeminiApnSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_6
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    #getter for: Lcom/mediatek/gemini/GeminiApnSettings;->mPnn:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/gemini/GeminiApnSettings;->access$500(Lcom/mediatek/gemini/GeminiApnSettings;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    #getter for: Lcom/mediatek/gemini/GeminiApnSettings;->mPnn:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/gemini/GeminiApnSettings;->access$500(Lcom/mediatek/gemini/GeminiApnSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    :cond_7
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    #calls: Lcom/mediatek/gemini/GeminiApnSettings;->initSimState()V
    invoke-static {v4}, Lcom/mediatek/gemini/GeminiApnSettings;->access$600(Lcom/mediatek/gemini/GeminiApnSettings;)V

    .line 213
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    #calls: Lcom/mediatek/gemini/GeminiApnSettings;->setSpn()V
    invoke-static {v4}, Lcom/mediatek/gemini/GeminiApnSettings;->access$700(Lcom/mediatek/gemini/GeminiApnSettings;)V

    .line 214
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    #calls: Lcom/mediatek/gemini/GeminiApnSettings;->setIMSI()V
    invoke-static {v4}, Lcom/mediatek/gemini/GeminiApnSettings;->access$800(Lcom/mediatek/gemini/GeminiApnSettings;)V

    .line 215
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    #calls: Lcom/mediatek/gemini/GeminiApnSettings;->setPnn()V
    invoke-static {v4}, Lcom/mediatek/gemini/GeminiApnSettings;->access$900(Lcom/mediatek/gemini/GeminiApnSettings;)V

    .line 218
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    iget-boolean v4, v4, Lcom/mediatek/gemini/GeminiApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v4, :cond_0

    .line 219
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    iget-object v5, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    iget v5, v5, Lcom/mediatek/gemini/GeminiApnSettings;->mSimId:I

    #calls: Lcom/mediatek/gemini/GeminiApnSettings;->fillList(I)V
    invoke-static {v4, v5}, Lcom/mediatek/gemini/GeminiApnSettings;->access$000(Lcom/mediatek/gemini/GeminiApnSettings;I)V

    goto/16 :goto_0

    .line 222
    :cond_8
    const-string v6, "com.android.mms.transaction.START"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 223
    const-string v4, "ApnSettings"

    const-string v6, "receiver: TRANSACTION_START in ApnSettings"

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {v5}, Lcom/mediatek/gemini/GeminiApnSettings;->access$1002(Z)Z

    .line 225
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    invoke-virtual {v4}, Lcom/mediatek/gemini/GeminiApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    .line 226
    :cond_9
    const-string v6, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 227
    const-string v5, "ApnSettings"

    const-string v6, "receiver: TRANSACTION_STOP in ApnSettings"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {v4}, Lcom/mediatek/gemini/GeminiApnSettings;->access$1002(Z)Z

    .line 229
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    invoke-virtual {v4}, Lcom/mediatek/gemini/GeminiApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    invoke-virtual {v5}, Lcom/mediatek/gemini/GeminiApnSettings;->getScreenEnableState()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    .line 230
    :cond_a
    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 231
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    const-string v7, "mode"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    #setter for: Lcom/mediatek/gemini/GeminiApnSettings;->mDualSimMode:I
    invoke-static {v6, v7}, Lcom/mediatek/gemini/GeminiApnSettings;->access$202(Lcom/mediatek/gemini/GeminiApnSettings;I)I

    .line 232
    const-string v6, "ApnSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "receiver, new dual sim mode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    #getter for: Lcom/mediatek/gemini/GeminiApnSettings;->mDualSimMode:I
    invoke-static {v8}, Lcom/mediatek/gemini/GeminiApnSettings;->access$200(Lcom/mediatek/gemini/GeminiApnSettings;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    invoke-virtual {v6}, Lcom/mediatek/gemini/GeminiApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    iget-boolean v7, v7, Lcom/mediatek/gemini/GeminiApnSettings;->mAirplaneModeEnabled:Z

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    #getter for: Lcom/mediatek/gemini/GeminiApnSettings;->mDualSimMode:I
    invoke-static {v7}, Lcom/mediatek/gemini/GeminiApnSettings;->access$200(Lcom/mediatek/gemini/GeminiApnSettings;)I

    move-result v7

    if-eqz v7, :cond_b

    :goto_2
    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_b
    move v4, v5

    goto :goto_2

    .line 234
    :cond_c
    const-string v6, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 236
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    invoke-static {v6}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 237
    .local v3, temp:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_d

    .line 238
    const-string v4, "ApnSettings"

    const-string v5, "Activity finished"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    invoke-virtual {v4}, Lcom/mediatek/gemini/GeminiApnSettings;->finish()V

    goto/16 :goto_0

    .line 240
    :cond_d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v4, :cond_0

    .line 241
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Telephony$SIMInfo;

    iget v4, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iget-object v5, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    iget v5, v5, Lcom/mediatek/gemini/GeminiApnSettings;->mSimId:I

    if-eq v4, v5, :cond_0

    .line 242
    const-string v4, "ApnSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "temp.size()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Activity finished"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnSettings$2;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    invoke-virtual {v4}, Lcom/mediatek/gemini/GeminiApnSettings;->finish()V

    goto/16 :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
