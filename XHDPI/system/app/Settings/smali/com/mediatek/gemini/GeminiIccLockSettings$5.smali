.class Lcom/mediatek/gemini/GeminiIccLockSettings$5;
.super Ljava/lang/Object;
.source "GeminiIccLockSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gemini/GeminiIccLockSettings;->onResume()V
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
    .line 340
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings$5;->this$0:Lcom/mediatek/gemini/GeminiIccLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings$5;->this$0:Lcom/mediatek/gemini/GeminiIccLockSettings;

    #getter for: Lcom/mediatek/gemini/GeminiIccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->access$700(Lcom/mediatek/gemini/GeminiIccLockSettings;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings$5;->this$0:Lcom/mediatek/gemini/GeminiIccLockSettings;

    #getter for: Lcom/mediatek/gemini/GeminiIccLockSettings;->mSimId:I
    invoke-static {v1}, Lcom/mediatek/gemini/GeminiIccLockSettings;->access$600(Lcom/mediatek/gemini/GeminiIccLockSettings;)I

    move-result v1

    const/16 v2, 0x12e

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    .line 344
    return-void
.end method
