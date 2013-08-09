.class Lcom/mediatek/gemini/SimListEntrance$1;
.super Landroid/content/BroadcastReceiver;
.source "SimListEntrance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/SimListEntrance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/SimListEntrance;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/SimListEntrance;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/mediatek/gemini/SimListEntrance$1;->this$0:Lcom/mediatek/gemini/SimListEntrance;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 177
    const-string v4, "SimListEntrance"

    const-string v5, "receiver: TelephonyIntents.ACTION_SIM_INFO_UPDATE"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v4, p0, Lcom/mediatek/gemini/SimListEntrance$1;->this$0:Lcom/mediatek/gemini/SimListEntrance;

    #calls: Lcom/mediatek/gemini/SimListEntrance;->addSimInfoPreference()V
    invoke-static {v4}, Lcom/mediatek/gemini/SimListEntrance;->access$000(Lcom/mediatek/gemini/SimListEntrance;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    const-string v4, "android.intent.action.SIM_NAME_UPDATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    const-string v4, "SimListEntrance"

    const-string v5, "receiver: TelephonyIntents.ACTION_SIM_NAME_UPDATE"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v4, "simId"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 182
    .local v3, slotid:I
    if-ltz v3, :cond_0

    .line 185
    invoke-static {p1, v3}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 186
    .local v2, siminfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v2, :cond_0

    .line 187
    iget-object v4, p0, Lcom/mediatek/gemini/SimListEntrance$1;->this$0:Lcom/mediatek/gemini/SimListEntrance;

    iget-wide v5, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/gemini/SimListEntrance;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gemini/SimInfoPreference;

    .line 189
    .local v1, pref:Lcom/mediatek/gemini/SimInfoPreference;
    if-eqz v1, :cond_0

    .line 192
    iget-object v4, v2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/mediatek/gemini/SimInfoPreference;->setName(Ljava/lang/String;)V

    goto :goto_0
.end method
