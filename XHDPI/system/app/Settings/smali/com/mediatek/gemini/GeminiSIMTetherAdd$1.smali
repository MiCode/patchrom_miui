.class Lcom/mediatek/gemini/GeminiSIMTetherAdd$1;
.super Landroid/database/ContentObserver;
.source "GeminiSIMTetherAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/GeminiSIMTetherAdd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/GeminiSIMTetherAdd;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$1;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v5, 0x1

    .line 69
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 70
    const-string v2, "GeminiSIMTetherAdd"

    const-string v3, "ContentObserver contact data changed"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    const-string v2, "GeminiSIMTetherAdd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sIsSaving="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$000()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$1;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mIsRefresh:Z
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$100(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    const-string v2, "GeminiSIMTetherAdd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsRefresh="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$1;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mIsRefresh:Z
    invoke-static {v4}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$100(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$1;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    #setter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mNeedRefresh:Z
    invoke-static {v2, v5}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$202(Lcom/mediatek/gemini/GeminiSIMTetherAdd;Z)Z

    goto :goto_0

    .line 79
    :cond_1
    const-string v2, "GeminiSIMTetherAdd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsRefresh="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$1;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mIsRefresh:Z
    invoke-static {v4}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$100(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$1;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mAsyncTask:Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$300(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 81
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$1;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mAsyncTask:Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$300(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->cancel(Z)Z

    move-result v0

    .line 82
    .local v0, isCanceld:Z
    const-string v2, "GeminiSIMTetherAdd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContentObserver---isCanceld="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v0           #isCanceld:Z
    :cond_2
    new-instance v1, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$1;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$1;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$400(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;-><init>(Lcom/mediatek/gemini/GeminiSIMTetherAdd;Landroid/content/Context;)V

    .line 85
    .local v1, mySync:Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;
    iget-object v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$1;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;

    #setter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mAsyncTask:Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;
    invoke-static {v3, v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$302(Lcom/mediatek/gemini/GeminiSIMTetherAdd;Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;)Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;

    goto/16 :goto_0
.end method
