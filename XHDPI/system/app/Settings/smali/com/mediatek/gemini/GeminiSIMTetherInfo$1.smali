.class Lcom/mediatek/gemini/GeminiSIMTetherInfo$1;
.super Landroid/database/ContentObserver;
.source "GeminiSIMTetherInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/GeminiSIMTetherInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$1;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v4, 0x1

    .line 62
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 63
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$1;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsRefresh:Z
    invoke-static {v1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$000(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const-string v1, "GeminiSIMTetherInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsRefresh="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$1;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsRefresh:Z
    invoke-static {v3}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$000(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$1;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    #setter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNeedRefresh:Z
    invoke-static {v1, v4}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$102(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Z)Z

    .line 74
    :goto_0
    const-string v1, "GeminiSIMTetherInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChange selfChange="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void

    .line 67
    :cond_0
    const-string v1, "GeminiSIMTetherInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsRefresh="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$1;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsRefresh:Z
    invoke-static {v3}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$000(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$1;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAsyncTask:Landroid/os/AsyncTask;
    invoke-static {v1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$200(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Landroid/os/AsyncTask;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$1;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAsyncTask:Landroid/os/AsyncTask;
    invoke-static {v1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$200(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 71
    :cond_1
    new-instance v0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$1;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$1;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$300(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;-><init>(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Landroid/content/Context;)V

    .line 72
    .local v0, mySync:Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$1;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;

    #setter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAsyncTask:Landroid/os/AsyncTask;
    invoke-static {v2, v1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$202(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
