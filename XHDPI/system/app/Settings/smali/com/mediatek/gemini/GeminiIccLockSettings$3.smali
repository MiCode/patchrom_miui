.class Lcom/mediatek/gemini/GeminiIccLockSettings$3;
.super Ljava/lang/Object;
.source "GeminiIccLockSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 176
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings$3;->this$0:Lcom/mediatek/gemini/GeminiIccLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 178
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings$3;->this$0:Lcom/mediatek/gemini/GeminiIccLockSettings;

    #getter for: Lcom/mediatek/gemini/GeminiIccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/mediatek/gemini/GeminiIccLockSettings;->access$700(Lcom/mediatek/gemini/GeminiIccLockSettings;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/CellConnService/CellConnMgr;->getResult()I

    move-result v0

    .line 179
    .local v0, nRet:I
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings$3;->this$0:Lcom/mediatek/gemini/GeminiIccLockSettings;

    #getter for: Lcom/mediatek/gemini/GeminiIccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/mediatek/gemini/GeminiIccLockSettings;->access$700(Lcom/mediatek/gemini/GeminiIccLockSettings;)Lcom/mediatek/CellConnService/CellConnMgr;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings$3;->this$0:Lcom/mediatek/gemini/GeminiIccLockSettings;

    #getter for: Lcom/mediatek/gemini/GeminiIccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/mediatek/gemini/GeminiIccLockSettings;->access$700(Lcom/mediatek/gemini/GeminiIccLockSettings;)Lcom/mediatek/CellConnService/CellConnMgr;

    const/4 v1, 0x4

    if-eq v1, v0, :cond_0

    .line 180
    const-string v1, "IccLockSettings"

    const-string v2, "mCell Mgr Result is not OK"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings$3;->this$0:Lcom/mediatek/gemini/GeminiIccLockSettings;

    #setter for: Lcom/mediatek/gemini/GeminiIccLockSettings;->mIsShouldBeFinished:Z
    invoke-static {v1, v3}, Lcom/mediatek/gemini/GeminiIccLockSettings;->access$802(Lcom/mediatek/gemini/GeminiIccLockSettings;Z)Z

    .line 182
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings$3;->this$0:Lcom/mediatek/gemini/GeminiIccLockSettings;

    invoke-virtual {v1}, Lcom/mediatek/gemini/GeminiIccLockSettings;->finish()V

    .line 189
    :goto_0
    return-void

    .line 185
    :cond_0
    const-string v1, "IccLockSettings"

    const-string v2, "mServiceComplete + Enable mPinToggle"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings$3;->this$0:Lcom/mediatek/gemini/GeminiIccLockSettings;

    #getter for: Lcom/mediatek/gemini/GeminiIccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/mediatek/gemini/GeminiIccLockSettings;->access$900(Lcom/mediatek/gemini/GeminiIccLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 188
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings$3;->this$0:Lcom/mediatek/gemini/GeminiIccLockSettings;

    const/4 v2, 0x0

    #setter for: Lcom/mediatek/gemini/GeminiIccLockSettings;->mIsUnlockFollow:Z
    invoke-static {v1, v2}, Lcom/mediatek/gemini/GeminiIccLockSettings;->access$1002(Lcom/mediatek/gemini/GeminiIccLockSettings;Z)Z

    goto :goto_0
.end method
