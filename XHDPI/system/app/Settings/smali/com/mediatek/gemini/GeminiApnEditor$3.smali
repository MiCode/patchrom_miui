.class Lcom/mediatek/gemini/GeminiApnEditor$3;
.super Landroid/database/ContentObserver;
.source "GeminiApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/GeminiApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/GeminiApnEditor;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/GeminiApnEditor;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiApnEditor$3;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v4, 0x0

    .line 273
    invoke-static {}, Lcom/mediatek/gemini/GeminiApnEditor;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "background changed apn "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor$3;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/gemini/GeminiApnEditor;->mFirstTime:Z
    invoke-static {v0, v1}, Lcom/mediatek/gemini/GeminiApnEditor;->access$1502(Lcom/mediatek/gemini/GeminiApnEditor;Z)Z

    .line 275
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor$3;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiApnEditor$3;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    #getter for: Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/mediatek/gemini/GeminiApnEditor;->access$1600(Lcom/mediatek/gemini/GeminiApnEditor;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/GeminiApnEditor;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 276
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor$3;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiApnEditor$3;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor$3;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    #getter for: Lcom/mediatek/gemini/GeminiApnEditor;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiApnEditor;->access$1700(Lcom/mediatek/gemini/GeminiApnEditor;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/gemini/GeminiApnEditor;->access$1800()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/mediatek/gemini/GeminiApnEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    #setter for: Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/mediatek/gemini/GeminiApnEditor;->access$1602(Lcom/mediatek/gemini/GeminiApnEditor;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 277
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor$3;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    #getter for: Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/mediatek/gemini/GeminiApnEditor;->access$1600(Lcom/mediatek/gemini/GeminiApnEditor;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 278
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor$3;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    #calls: Lcom/mediatek/gemini/GeminiApnEditor;->fillUi()V
    invoke-static {v0}, Lcom/mediatek/gemini/GeminiApnEditor;->access$1900(Lcom/mediatek/gemini/GeminiApnEditor;)V

    .line 279
    return-void
.end method
