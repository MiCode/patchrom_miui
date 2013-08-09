.class Lcom/mediatek/gemini/GeminiSIMTetherAdd$3;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$3;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 200
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_0

    .line 201
    const-string v0, "GeminiSIMTetherAdd"

    const-string v1, "tether info save finished"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$3;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->removeDialog(I)V

    .line 203
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$002(Z)Z

    .line 204
    const-string v0, "GeminiSIMTetherAdd"

    const-string v1, "saveTetherConfigs(), end"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$3;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->setResult(I)V

    .line 206
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$3;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    invoke-virtual {v0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->finish()V

    .line 208
    :cond_0
    return-void
.end method
