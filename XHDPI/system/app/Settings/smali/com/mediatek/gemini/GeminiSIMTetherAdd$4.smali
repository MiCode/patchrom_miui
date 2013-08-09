.class Lcom/mediatek/gemini/GeminiSIMTetherAdd$4;
.super Ljava/lang/Thread;
.source "GeminiSIMTetherAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gemini/GeminiSIMTetherAdd;->saveTetherConfigs()V
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
    .line 326
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$4;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 329
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v5, tetheredContactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$4;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mDataList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$700(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 331
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 332
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$4;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mDataList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$700(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/gemini/GeminiSIMTetherItem;

    .line 334
    .local v4, item:Lcom/mediatek/gemini/GeminiSIMTetherItem;
    invoke-virtual {v4}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->getCheckedStatus()I

    move-result v0

    .line 335
    .local v0, checkedStatus:I
    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    .line 336
    invoke-virtual {v4}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->getContactId()I

    move-result v1

    .line 337
    .local v1, contactId:I
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    .end local v1           #contactId:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 340
    .end local v0           #checkedStatus:I
    .end local v4           #item:Lcom/mediatek/gemini/GeminiSIMTetherItem;
    :cond_1
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$4;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;
    invoke-static {v6}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$1000(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->setCurrTetheredNum(Ljava/util/ArrayList;Z)V

    .line 341
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$4;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mSaveProgressHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$1200(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x3ea

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 343
    return-void
.end method
