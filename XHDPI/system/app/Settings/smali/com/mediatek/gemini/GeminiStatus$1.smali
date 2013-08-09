.class Lcom/mediatek/gemini/GeminiStatus$1;
.super Landroid/content/BroadcastReceiver;
.source "GeminiStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/GeminiStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/GeminiStatus;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/GeminiStatus;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiStatus$1;->this$0:Lcom/mediatek/gemini/GeminiStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 130
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 133
    const-string v6, "level"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 134
    .local v1, level:I
    const-string v6, "scale"

    const/16 v7, 0x64

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 136
    .local v3, scale:I
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiStatus$1;->this$0:Lcom/mediatek/gemini/GeminiStatus;

    #getter for: Lcom/mediatek/gemini/GeminiStatus;->mBatteryLevel:Landroid/preference/Preference;
    invoke-static {v6}, Lcom/mediatek/gemini/GeminiStatus;->access$000(Lcom/mediatek/gemini/GeminiStatus;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/gemini/GeminiStatus$1;->this$0:Lcom/mediatek/gemini/GeminiStatus;

    const v8, 0x7f0c0a26

    new-array v9, v12, [Ljava/lang/Object;

    mul-int/lit8 v10, v1, 0x64

    div-int/2addr v10, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Lcom/mediatek/gemini/GeminiStatus;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 139
    const-string v6, "plugged"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 140
    .local v2, plugType:I
    const-string v6, "status"

    invoke-virtual {p2, v6, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 143
    .local v4, status:I
    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    .line 144
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiStatus$1;->this$0:Lcom/mediatek/gemini/GeminiStatus;

    const v7, 0x7f0c0049

    invoke-virtual {v6, v7}, Lcom/mediatek/gemini/GeminiStatus;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, statusString:Ljava/lang/String;
    if-lez v2, :cond_0

    .line 146
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/gemini/GeminiStatus$1;->this$0:Lcom/mediatek/gemini/GeminiStatus;

    if-ne v2, v12, :cond_2

    const v6, 0x7f0c004a

    :goto_0
    invoke-virtual {v8, v6}, Lcom/mediatek/gemini/GeminiStatus;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 161
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiStatus$1;->this$0:Lcom/mediatek/gemini/GeminiStatus;

    #getter for: Lcom/mediatek/gemini/GeminiStatus;->mBatteryStatus:Landroid/preference/Preference;
    invoke-static {v6}, Lcom/mediatek/gemini/GeminiStatus;->access$100(Lcom/mediatek/gemini/GeminiStatus;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    .end local v1           #level:I
    .end local v2           #plugType:I
    .end local v3           #scale:I
    .end local v4           #status:I
    .end local v5           #statusString:Ljava/lang/String;
    :cond_1
    return-void

    .line 146
    .restart local v1       #level:I
    .restart local v2       #plugType:I
    .restart local v3       #scale:I
    .restart local v4       #status:I
    .restart local v5       #statusString:Ljava/lang/String;
    :cond_2
    const v6, 0x7f0c004b

    goto :goto_0

    .line 152
    .end local v5           #statusString:Ljava/lang/String;
    :cond_3
    const/4 v6, 0x3

    if-ne v4, v6, :cond_4

    .line 153
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiStatus$1;->this$0:Lcom/mediatek/gemini/GeminiStatus;

    const v7, 0x7f0c004d

    invoke-virtual {v6, v7}, Lcom/mediatek/gemini/GeminiStatus;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 154
    .end local v5           #statusString:Ljava/lang/String;
    :cond_4
    const/4 v6, 0x4

    if-ne v4, v6, :cond_5

    .line 155
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiStatus$1;->this$0:Lcom/mediatek/gemini/GeminiStatus;

    const v7, 0x7f0c004e

    invoke-virtual {v6, v7}, Lcom/mediatek/gemini/GeminiStatus;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 156
    .end local v5           #statusString:Ljava/lang/String;
    :cond_5
    const/4 v6, 0x5

    if-ne v4, v6, :cond_6

    .line 157
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiStatus$1;->this$0:Lcom/mediatek/gemini/GeminiStatus;

    const v7, 0x7f0c004f

    invoke-virtual {v6, v7}, Lcom/mediatek/gemini/GeminiStatus;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 159
    .end local v5           #statusString:Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiStatus$1;->this$0:Lcom/mediatek/gemini/GeminiStatus;

    const v7, 0x7f0c0048

    invoke-virtual {v6, v7}, Lcom/mediatek/gemini/GeminiStatus;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #statusString:Ljava/lang/String;
    goto :goto_1
.end method
