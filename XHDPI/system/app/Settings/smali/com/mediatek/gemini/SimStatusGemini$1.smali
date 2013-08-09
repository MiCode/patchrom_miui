.class Lcom/mediatek/gemini/SimStatusGemini$1;
.super Ljava/lang/Object;
.source "SimStatusGemini.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/SimStatusGemini;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/SimStatusGemini;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/SimStatusGemini;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mediatek/gemini/SimStatusGemini$1;->this$0:Lcom/mediatek/gemini/SimStatusGemini;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 103
    iget-object v1, p0, Lcom/mediatek/gemini/SimStatusGemini$1;->this$0:Lcom/mediatek/gemini/SimStatusGemini;

    #getter for: Lcom/mediatek/gemini/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/mediatek/gemini/SimStatusGemini;->access$100(Lcom/mediatek/gemini/SimStatusGemini;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/CellConnService/CellConnMgr;->getResult()I

    move-result v0

    .line 104
    .local v0, nRet:I
    iget-object v1, p0, Lcom/mediatek/gemini/SimStatusGemini$1;->this$0:Lcom/mediatek/gemini/SimStatusGemini;

    #getter for: Lcom/mediatek/gemini/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/mediatek/gemini/SimStatusGemini;->access$100(Lcom/mediatek/gemini/SimStatusGemini;)Lcom/mediatek/CellConnService/CellConnMgr;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mediatek/gemini/SimStatusGemini$1;->this$0:Lcom/mediatek/gemini/SimStatusGemini;

    #getter for: Lcom/mediatek/gemini/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/mediatek/gemini/SimStatusGemini;->access$100(Lcom/mediatek/gemini/SimStatusGemini;)Lcom/mediatek/CellConnService/CellConnMgr;

    const/4 v1, 0x4

    if-eq v1, v0, :cond_0

    .line 105
    const-string v1, "Gemini_SimStatus"

    const-string v2, "mCell Mgr Result is not OK"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, p0, Lcom/mediatek/gemini/SimStatusGemini$1;->this$0:Lcom/mediatek/gemini/SimStatusGemini;

    const/4 v2, 0x1

    #setter for: Lcom/mediatek/gemini/SimStatusGemini;->mIsShouldBeFinished:Z
    invoke-static {v1, v2}, Lcom/mediatek/gemini/SimStatusGemini;->access$202(Lcom/mediatek/gemini/SimStatusGemini;Z)Z

    .line 107
    iget-object v1, p0, Lcom/mediatek/gemini/SimStatusGemini$1;->this$0:Lcom/mediatek/gemini/SimStatusGemini;

    invoke-virtual {v1}, Lcom/mediatek/gemini/SimStatusGemini;->finish()V

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/mediatek/gemini/SimStatusGemini$1;->this$0:Lcom/mediatek/gemini/SimStatusGemini;

    const/4 v2, 0x0

    #setter for: Lcom/mediatek/gemini/SimStatusGemini;->mIsUnlockFollow:Z
    invoke-static {v1, v2}, Lcom/mediatek/gemini/SimStatusGemini;->access$302(Lcom/mediatek/gemini/SimStatusGemini;Z)Z

    goto :goto_0
.end method
