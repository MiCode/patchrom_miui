.class Lcom/mediatek/gemini/DefaultSimFragment$1;
.super Landroid/database/ContentObserver;
.source "DefaultSimFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/DefaultSimFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/DefaultSimFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/DefaultSimFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/mediatek/gemini/DefaultSimFragment$1;->this$0:Lcom/mediatek/gemini/DefaultSimFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const-wide/16 v4, 0x0

    .line 195
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimFragment$1;->this$0:Lcom/mediatek/gemini/DefaultSimFragment;

    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimFragment$1;->this$0:Lcom/mediatek/gemini/DefaultSimFragment;

    #calls: Lcom/mediatek/gemini/DefaultSimFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/mediatek/gemini/DefaultSimFragment;->access$100(Lcom/mediatek/gemini/DefaultSimFragment;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gprs_connection_sim_setting"

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    #setter for: Lcom/mediatek/gemini/DefaultSimFragment;->mCurrentSimId:J
    invoke-static {v0, v1, v2}, Lcom/mediatek/gemini/DefaultSimFragment;->access$002(Lcom/mediatek/gemini/DefaultSimFragment;J)J

    .line 198
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimFragment$1;->this$0:Lcom/mediatek/gemini/DefaultSimFragment;

    #getter for: Lcom/mediatek/gemini/DefaultSimFragment;->mEnableSimGprs:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/mediatek/gemini/DefaultSimFragment;->access$200(Lcom/mediatek/gemini/DefaultSimFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimFragment$1;->this$0:Lcom/mediatek/gemini/DefaultSimFragment;

    #getter for: Lcom/mediatek/gemini/DefaultSimFragment;->mCurrentSimId:J
    invoke-static {v0}, Lcom/mediatek/gemini/DefaultSimFragment;->access$000(Lcom/mediatek/gemini/DefaultSimFragment;)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 199
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimFragment$1;->this$0:Lcom/mediatek/gemini/DefaultSimFragment;

    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimFragment$1;->this$0:Lcom/mediatek/gemini/DefaultSimFragment;

    #getter for: Lcom/mediatek/gemini/DefaultSimFragment;->mEnableSimGprs:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/mediatek/gemini/DefaultSimFragment;->access$200(Lcom/mediatek/gemini/DefaultSimFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    #calls: Lcom/mediatek/gemini/DefaultSimFragment;->updatePreference(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/gemini/DefaultSimFragment;->access$300(Lcom/mediatek/gemini/DefaultSimFragment;Z)V

    .line 200
    return-void

    .line 198
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
