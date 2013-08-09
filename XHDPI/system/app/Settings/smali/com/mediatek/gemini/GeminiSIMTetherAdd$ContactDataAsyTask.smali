.class Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;
.super Landroid/os/AsyncTask;
.source "GeminiSIMTetherAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/GeminiSIMTetherAdd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactDataAsyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;


# direct methods
.method public constructor <init>(Lcom/mediatek/gemini/GeminiSIMTetherAdd;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "ct"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 220
    const-string v0, "GeminiSIMTetherAdd"

    const-string v1, "ContactDataAsyTask constructor"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iput-object p2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->mContext:Landroid/content/Context;

    .line 222
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 211
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mIsRefresh:Z
    invoke-static {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$102(Lcom/mediatek/gemini/GeminiSIMTetherAdd;Z)Z

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mNeedRefresh:Z
    invoke-static {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$202(Lcom/mediatek/gemini/GeminiSIMTetherAdd;Z)Z

    .line 272
    const-string v0, "GeminiSIMTetherAdd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before---mNeedRefresh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mNeedRefresh:Z
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$200(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;
    invoke-static {v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$1000(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->getAllContactData()Ljava/util/ArrayList;

    move-result-object v1

    #setter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mDataList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$702(Lcom/mediatek/gemini/GeminiSIMTetherAdd;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 274
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;
    invoke-static {v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$1000(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->getTotalContactNum()I

    move-result v1

    #setter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mTotalConNum:I
    invoke-static {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$1102(Lcom/mediatek/gemini/GeminiSIMTetherAdd;I)I

    .line 275
    const-string v0, "GeminiSIMTetherAdd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after---mNeedRefresh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mNeedRefresh:Z
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$200(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mNeedRefresh:Z
    invoke-static {v0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$200(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 263
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 264
    const-string v0, "GeminiSIMTetherAdd"

    const-string v1, "ContactDataAsyTask is cancelled"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 211
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7
    .parameter "result"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 233
    const-string v2, "GeminiSIMTetherAdd"

    const-string v3, "onPostExecute"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->removeDialog(I)V

    .line 235
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 236
    const/4 v1, 0x0

    .line 237
    .local v1, isHaveContact:Z
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mDataList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$700(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mDataList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$700(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 239
    .local v0, contactSize:I
    if-lez v0, :cond_2

    .line 240
    const/4 v1, 0x1

    .line 246
    .end local v0           #contactSize:I
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 247
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$800(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 251
    :goto_1
    new-instance v2, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mDataList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$700(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6}, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$902(Lcom/mediatek/gemini/GeminiSIMTetherAdapter;)Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    .line 252
    invoke-static {}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$900()Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->setShowCheckBox(Z)V

    .line 253
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$800(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 254
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$800(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Landroid/widget/ListView;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$900()Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$800(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 258
    :cond_1
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    #setter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mIsRefresh:Z
    invoke-static {v2, v5}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$102(Lcom/mediatek/gemini/GeminiSIMTetherAdd;Z)Z

    .line 259
    return-void

    .line 242
    .restart local v0       #contactSize:I
    :cond_2
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    const/16 v3, 0x3eb

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->showDialog(I)V

    goto :goto_0

    .line 249
    .end local v0           #contactSize:I
    :cond_3
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$800(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Landroid/widget/ListView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 227
    const-string v0, "GeminiSIMTetherAdd"

    const-string v1, "onPreExecute"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->showDialog(I)V

    .line 229
    return-void
.end method
